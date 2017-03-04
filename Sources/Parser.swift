//
//  Parser.swift
//  ConstraintsTranslator
//
//  Created by KeisukeKimura on 2017/03/04.
//
//

import Foundation
import AEXML

struct StoryboardParser {
    static func parse(string: String) throws -> View? {
        let xmlDoc = try AEXMLDocument(xml: string)
        
        let rootViewXml = xmlDoc.root["scenes"]["scene"]["objects"]["viewController"]["view"]
        return View(element: rootViewXml)
    }
}
