///
//  ConstrainsTranslatorTests.swift
//  ConstrainsTranslatorTests
//
//  Created by akuraru on 2017/03/04.
//  Copyright © 2017年 Keisuke Kimura. All rights reserved.
//

import Foundation
import XCTest
@testable import ConstraintsTranslator

class ConstrainsTranslatorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testTemporaryClassToJsonFormat() {
        let view = View(id: "m2d-tO-WM7", subviews: [
            View(id: "Nb9-oQ-WCJ", subviews: [], constrains: [
                Constraint(
                    firstAttribute: "width",
                    constant: "100",
                    id: "COE-ui-HIh"
                ), Constraint(
                    firstAttribute: "height",
                    constant: "100",
                    id: "Uvy-fQ-vpj"
                )
                
                ])
            ] , constrains:[
                Constraint(
                    firstItem: "Nb9-oQ-WCJ",
                    firstAttribute: "centerY",
                    secondItem: "m2d-tO-WM7",
                    secondAttribute: "centerY",
                    id: "lsJ-1m-vgh"
                ), Constraint(
                    firstItem: "Nb9-oQ-WCJ",
                    firstAttribute: "centerX",
                    secondItem: "m2d-tO-WM7",
                    secondAttribute: "centerX",
                    id: "nTa-fY-4GG"
                )
            ])
        
        let pathStirng = Bundle.allBundles[0].path(forResource: "CenterView", ofType: "json")
        let url = URL(fileURLWithPath: pathStirng!)
        let content = try! String(contentsOf: url, encoding: .utf8)
        XCTAssertEqual(VisualFormatLanguageTranslator.format(view: view, formatter: JsonFormatter()), content)
    }
}
