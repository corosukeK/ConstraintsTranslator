//
//  ConstraintsTranslatorError.swift
//  ConstraintsTranslator
//
//  Created by KeisukeKimura on 2017/03/04.
//  Copyright © 2017年 Keisuke Kimura. All rights reserved.
//

import Foundation

public enum ConstraintsTranslatorError: Error {
    case fileNotFound
    case fileIsNotReadable
    case parseError
}
