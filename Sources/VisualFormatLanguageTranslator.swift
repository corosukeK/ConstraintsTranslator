//
//  VisualFormatLanguageTranslator.swift
//  ConstraintsTranslator
//
//  Created by KeisukeKimura on 2017/03/04.
//  Copyright © 2017年 Keisuke Kimura. All rights reserved.
//

import Foundation

class VisualFormatLanguageTranslator {
    static func translate(storyboardString: String) -> String {
        return ""
    }
}

struct Constraint {
    let firstItem: String
    let firstAttribute: String
    let secondItem: String
    let secondAttribute: String
    let id:String
}

struct View {
    let id: String
    let subviews: [View]
    let constrains: [Constraint]
}
