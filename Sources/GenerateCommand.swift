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
    
    public let verb = "generate"
    public let function = "generate DSL(default:visual format language)"
    
    public func run(_ options: NoOptions<ConstraintsTranslatorError>) -> Result<(), ConstraintsTranslatorError> {
        print("1.0.0")
        return .success(())
    }
}
