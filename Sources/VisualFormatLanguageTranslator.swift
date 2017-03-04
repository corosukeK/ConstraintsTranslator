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
        return "{\n" + formatView(view: view, indent: 1) + "}\n"
    }
    func formatView(view: View, indent: Int) -> String {
        return spacing(indent) + "\"view\": {\n" +
            formatAttribute(view: view, indent: indent + 1) +
            subviews(view: view, indent: indent + 1) +
            constraints(view: view, indent: indent + 1) +
            spacing(indent) + "}\n"
    }
    func subviews(view: View, indent: Int) -> String {
        if view.subviews.isEmpty { return spacing(indent) + "\"subviews\": [],\n" }
        
        let views = view.subviews.map{ formatView(view: $0, indent: indent + 2)}.joined(separator: spacing(indent + 1) + "}, {\n")
        return spacing(indent) + "\"subviews\": [\n" +
            spacing(indent + 1) + "{\n" +
            views +
            spacing(indent + 1) + "}\n" +
            spacing(indent) + "],\n"
    }
    func formatAttribute(view: View, indent: Int) -> String {
        return spacing(indent) + "\"attribute\": {\n" + spacing(indent + 1) + "\"id\": \"" + view.id + "\"\n" + spacing(indent) + "},\n"
    }
    func constraints(view: View, indent: Int) -> String {
        let constraints = view.constrains.map{ contraint(constraint: $0, indent: indent + 2) }.joined(separator: spacing(indent + 1) + "}, {\n")
        return spacing(indent) + "\"constraints\": [\n" +
            spacing(indent + 1) + "{\n" +
            constraints +
            spacing(indent + 1) + "}\n" +
            spacing(indent) + "]\n"
    }
    func contraint(constraint: Constraint, indent: Int) -> String {
        var attribute: [String] = []
        
        if let firstItem = constraint.firstItem {
            attribute.append(spacing(indent) + "\"firstItem\": \"" + firstItem)
        }
        
        attribute.append(spacing(indent) + "\"firstAttribute\": \"" + constraint.firstAttribute)
        
        if let secondItem = constraint.secondItem {
            attribute.append(spacing(indent) + "\"secondItem\": \"" + secondItem)
        }
        
        if let secondAttribute = constraint.secondAttribute {
            attribute.append(spacing(indent) + "\"secondAttribute\": \"" + secondAttribute)
        }
        
        if let constant = constraint.constant {
            attribute.append(spacing(indent) + "\"constant\": \"" + constant)
        }
        
        attribute.append(spacing(indent) + "\"id\": \"" + constraint.id)
        
        return attribute.joined(separator: "\",\n") + "\"\n"
    }

    func spacing(_ count: Int) -> String {
        return String(repeating: " ", count: 4 * count)
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
