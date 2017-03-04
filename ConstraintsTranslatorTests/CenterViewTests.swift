///
//  CenterViewTests.swift
//  CenterViewTests
//
//  Created by akuraru on 2017/03/04.
//  Copyright © 2017年 Keisuke Kimura. All rights reserved.
//

import Foundation
import XCTest
import ConstraintsTranslator

class CenterViewTests: XCTestCase {
    var view: View!
    
    override func setUp() {
        super.setUp()
        
        self.view = View(id: "m2d-tO-WM7", subviews: [
            View(id: "Nb9-oQ-WCJ", subviews: [], constraints: [
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
            ] , constraints:[
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
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testTemporaryClassToJsonFormat() {
        let testBundle = Bundle.allBundles.filter{ $0.bundleURL.absoluteString.hasSuffix("xctest/") }.first!
        let pathStirng = testBundle.path(forResource: "CenterView", ofType: "json")
        let url = URL(fileURLWithPath: pathStirng!)
        let content = try! String(contentsOf: url, encoding: .utf8)
        XCTAssertEqual(VisualFormatLanguageTranslator.format(view: view, formatter: JsonFormatter()), content)
    }
}
