//
//  main.swift
//  ConstraintsTranslator
//
//  Created by KeisukeKimura on 2017/03/04.
//  Copyright © 2017年 Keisuke Kimura. All rights reserved.
//

import Foundation
import Commandant



var arguments = CommandLine.arguments

let registry = CommandRegistry<ConstraintsTranslatorError>()



registry.main(defaultVerb: "help") { (error) in
    
}
