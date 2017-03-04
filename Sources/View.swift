//
//  View.swift
//  ConstraintsTranslator
//
//  Created by akuraru on 2017/03/04.
//
//

import Foundation
import AEXML

struct View {
    let id: String
    let subviews: [View]
    let constraints: [Constraint]
    let userLabel: String?
    
    init(element: AEXMLElement) {
        
        self.id = element.attributes["id"]!
        self.userLabel = element.attributes["userLabel"]
        
        let subviewsElement = element["subviews"].children
        self.subviews = subviewsElement.map{ (element) -> View in
            return View(element: element)
        }
        
        let constraintsElement = element["constraints"]["constraint"]
        if constraintsElement.error == nil {
            self.constraints = constraintsElement.all!.map({ (element) -> Constraint in
                return Constraint(element: element)
            })
        } else {
            self.constraints = []
        }
    }
    init(id: String, subviews: [View], constraints: [Constraint], userLabel: String? = nil) {
        self.id = id
        self.subviews = subviews
        self.constraints = constraints
        self.userLabel = userLabel
    }
}

extension View: Equatable {
    public static func ==(lhs: View, rhs: View) -> Bool {
        return lhs.id == rhs.id &&
            arrayEqual(lhs: lhs.subviews, rhs: rhs.subviews) &&
            arrayEqual(lhs: lhs.constraints, rhs: rhs.constraints)
    }
}
