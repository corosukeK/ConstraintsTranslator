//
//  Translator.swift
//  ConstraintsTranslator
//
//  Created by KeisukeKimura on 2017/03/04.
//  Copyright © 2017年 Keisuke Kimura. All rights reserved.
//

import Foundation

protocol Translator {
    static func translate(storyboardString: String) -> String
}
