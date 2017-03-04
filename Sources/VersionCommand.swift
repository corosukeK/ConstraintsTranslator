//
//  VersionCommand.swift
//  ConstraintsTranslator
//
//  Created by KeisukeKimura on 2017/03/04.
//  Copyright © 2017年 Keisuke Kimura. All rights reserved.
//

import Foundation
import Commandant
import Result

public struct VersionCommand: CommandProtocol {

    public let verb = "version"
    public let function = "Display the current version of ConstraintsTranslator"
    
    public func run(_ options: NoOptions<ConstraintsTranslatorError>) -> Result<(), ConstraintsTranslatorError> {
        print("0.0.1 alpha")
        return .success(())
    }
}
