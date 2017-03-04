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
        
        print(string)
        
        return .success()
    }
}

