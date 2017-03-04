//
//  VisualFormatLanguageTranslator.swift
//  ConstraintsTranslator
//
//  Created by KeisukeKimura on 2017/03/04.
//  Copyright © 2017年 Keisuke Kimura. All rights reserved.
//

import Foundation
import AEXML

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
        return ""
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
    
    init(element: AEXMLElement) {
        let attributes = element.attributes
        print(attributes)
        self.firstItem = attributes["firstItem"]
        self.firstAttribute = attributes["firstAttribute"]!
        self.secondItem = attributes["secondItem"]
        self.secondAttribute = attributes["secondAttribute"]
        self.constant = attributes["constant"]
        self.id = attributes["id"]!
    }
}

struct View {
    let id: String
    let subviews: [View]
    let constraints: [Constraint]
    
    init(element: AEXMLElement) {
        
        self.id = element.attributes["id"]!

        let subviewsElement = element["subviews"]["view"]
        if subviewsElement.error == nil {
            for view in subviewsElement.all! {
                print(view.name)
            }
            self.subviews = subviewsElement.all!.map({ (element) -> View in
                return View(element: element)
            })
        } else {
            self.subviews = []
        }

        let constraintsElement = element["constraints"]["constraint"]
        if subviewsElement.error == nil {
            self.constraints = constraintsElement.all!.map({ (element) -> Constraint in
                return Constraint(element: element)
            })
        } else {
            self.constraints = []
        }
    }
}
