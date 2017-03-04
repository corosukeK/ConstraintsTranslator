//
//  GenerateCommand.swift
//  ConstraintsTranslator
//
//  Created by KeisukeKimura on 2017/03/04.
//
//

import Foundation
import Commandant
import Result

public struct GenerateCommand: CommandProtocol {
    
    public struct GenerateOptions: OptionsProtocol {
        let filePath: String

        static func create(filePath: String) -> GenerateOptions {
            return GenerateOptions(filePath: filePath)
        }
        
        public static func evaluate(_ m: CommandMode) -> Result<GenerateCommand.GenerateOptions, CommandantError<ConstraintsTranslatorError>> {
            return create
                <*> m <| Argument(defaultValue: "", usage: "Storyboard file path to open")
        }
    }
    
    public let verb = "generate"
    public let function = "generate DSL(default:visual format language)"
    
    public func run(_ options: GenerateOptions) -> Result<(), ConstraintsTranslatorError> {
        let fileManager = FileManager()
        
        guard fileManager.fileExists(atPath: options.filePath) else {
            return .failure(.fileNotFound)
        }
        guard fileManager.isReadableFile(atPath: options.filePath) else {
            return .failure(.fileIsNotReadable)
        }

        let string = try! String(contentsOfFile: options.filePath)
        
        guard let view = try? StoryboardParser.parse(string: string) else {
            return .failure(.parseError)
        }
        guard let unwrappedview = view else {
            fatalError()
        }
        
        let fileString = DSLFormatter().format(unwrappedview)
        
        let data = fileString.data(using: .utf8)
        let path = filePath?.replacingOccurrences(of: ".storyboard", with: ".converted")
        let url = URL(fileURLWithPath: path!)
        try! data?.write(to: url)
        
        return .success()
    }
}

