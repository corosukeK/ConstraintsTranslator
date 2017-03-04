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
    static func format(view: View, formatter: Formatter) -> String {
        return formatter.format(view)
    }
}

protocol Formatter {
    func format(_ view: View) -> String
}

class JsonFormatter: Formatter {
    func format(_ view: View) -> String {
        return "{\n    \"view\": {\n        \"attribute\": {\n            \"id\": \"m2d-tO-WM7\"\n        },\n        \"subviews\": [\n           {\n               \"view\": {\n                   \"attribute\": {\n                       \"id\": \"Nb9-oQ-WCJ\"\n                   },\n                   \"constraints\": [\n                       { \n                         \"firstAttribute\": \"width\",\n                         \"constant\": \"100\",\n                         \"id\": \"COE-ui-HIh\"\n                     }\n                     {\n                       \"firstAttribute\": \"height\",\n                       \"constant\": \"100\",\n                       \"id\": \"Uvy-fQ-vpj\"\n                   }\n               ]\n               }\n           }\n       ],\n        \"constraints\": [\n            {\n                \"firstItem\": \"Nb9-oQ-WCJ\",\n                \"firstAttribute\": \"centerY\", \n                \"secondItem\": \"m2d-tO-WM7\",\n                \"secondAttribute\": \"centerY\",\n                \"id\": \"lsJ-1m-vgh\",\n\n            }, {\n                \"firstItem\": \"Nb9-oQ-WCJ\",\n                \"firstAttribute\": \"centerX\",\n                \"secondItem\": \"m2d-tO-WM7\",\n                \"secondAttribute\": \"centerX\",\n                \"id\": \"nTa-fY-4GG\"\n            }\n        ]\n    }\n}\n"
    }
}

struct Constraint {
    let firstItem: String?
    let firstAttribute: String
    let secondItem: String?
    let secondAttribute: String?
    let constant: String?
    let id:String
    
    init(
        firstItem: String? = nil,
        firstAttribute: String,
        secondItem: String? = nil,
        secondAttribute: String? = nil,
        constant: String? = nil,
        id:String
        ) {
        self.firstItem = firstItem
        self.firstAttribute = firstAttribute
        self.secondItem = secondItem
        self.secondAttribute = secondAttribute
        self.constant = constant
        self.id = id
    }
}

struct View {
    let id: String
    let subviews: [View]
    let constrains: [Constraint]
}
