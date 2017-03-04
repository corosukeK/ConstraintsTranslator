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
    
    func readableDescription(target: View) -> String {
        let name = target.userLabel ?? target.id
        let firstItem = self.firstItem ?? target.id
        
        if let constant = constant, firstAttribute == "width" && secondAttribute == nil {
            return "\(name).width == \(constant)"
        }
        else if let constant = constant, firstAttribute == "height" && secondAttribute == nil {
            return "\(name).height == \(constant)"
        }
        else if let secondItem = secondItem,
            let secondAttribute = secondAttribute
        {
            return "\(firstItem).\(firstAttribute) == \(secondItem).\(secondAttribute)"
        }
        
        fatalError()
    }
}

extension Constraint: Equatable {
    public static func ==(lhs: Constraint, rhs: Constraint) -> Bool {
        return lhs.firstItem == rhs.firstItem &&
            lhs.firstAttribute == rhs.firstAttribute &&
            lhs.secondItem == rhs.secondItem &&
            lhs.secondAttribute == rhs.secondAttribute &&
            lhs.constant == rhs.constant &&
            lhs.id == rhs.id
    }
}
