//
//  Constraint.swift
//  ConstraintsTranslator
//
//  Created by KeisukeKimura on 2017/03/04.
//
//

import Foundation
import AEXML

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
        self.firstItem = attributes["firstItem"]
        self.firstAttribute = attributes["firstAttribute"]!
        self.secondItem = attributes["secondItem"]
        self.secondAttribute = attributes["secondAttribute"]
        self.constant = attributes["constant"]
        self.id = attributes["id"]!
    }
}
