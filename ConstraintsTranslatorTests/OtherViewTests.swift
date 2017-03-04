///
//  OtherViewTests.swift
//  OtherViewTests
//
//  Created by akuraru on 2017/03/04.
//  Copyright © 2017年 Keisuke Kimura. All rights reserved.
//

import Foundation
import XCTest
import ConstraintsTranslator

class OtherViewTests: XCTestCase {
    var view: View!
    
    override func setUp() {
        super.setUp()
        
        self.view = View(id: "m2d-tO-WM7", subviews: [
            View(id: "uPU-dX-gwR", subviews: [], constraints: [], userLabel: nil),
            View(id: "urs-FR-alE", subviews: [], constraints: [], userLabel: nil),
            View(id: "Ivd-u6-e9B", subviews: [], constraints: [], userLabel: nil),
            View(id: "kzl-tD-zP5", subviews: [], constraints: [], userLabel: nil),
            View(id: "WcE-b9-OsW", subviews: [], constraints: [], userLabel: nil),
            View(id: "qJg-av-K5X", subviews: [], constraints: [
                Constraint(firstItem: nil, firstAttribute: "width", secondItem: nil, secondAttribute: nil, constant: "114", id: "PbX-9x-zjx")
                ], userLabel: nil),
            View(id: "YZp-vA-FfM", subviews: [], constraints: [], userLabel: nil)],
                         constraints: [
                            Constraint(firstItem: "kzl-tD-zP5", firstAttribute: "leading", secondItem: "m2d-tO-WM7", secondAttribute: "leadingMargin", constant: nil, id: "1SL-HC-nfI"),
                            Constraint(firstItem: "qJg-av-K5X", firstAttribute: "leading", secondItem: "m2d-tO-WM7", secondAttribute: "leadingMargin", constant: nil, id: "65D-kW-pIH"),
                            Constraint(firstItem: "uPU-dX-gwR", firstAttribute: "top", secondItem: "YZp-vA-FfM", secondAttribute: "bottom", constant: nil, id: "GcQ-t0-FOO"),
                            Constraint(firstItem: "qJg-av-K5X", firstAttribute: "top", secondItem: "WcE-b9-OsW", secondAttribute: "bottom", constant: nil, id: "IKQ-bJ-Vdq"),
                            Constraint(firstItem: "YZp-vA-FfM", firstAttribute: "leading", secondItem: "m2d-tO-WM7", secondAttribute: "leadingMargin", constant: nil, id: "IUT-6f-9oF"),
                            Constraint(firstItem: "kzl-tD-zP5", firstAttribute: "top", secondItem: "Ivd-u6-e9B", secondAttribute: "bottom", constant: nil, id: "Sp6-Df-1pc"),
                            Constraint(firstItem: "Ivd-u6-e9B", firstAttribute: "leading", secondItem: "m2d-tO-WM7", secondAttribute: "leadingMargin", constant: nil, id: "TsQ-j4-EOv"),
                            Constraint(firstItem: "WcE-b9-OsW", firstAttribute: "top", secondItem: "kzl-tD-zP5", secondAttribute: "bottom", constant: nil, id: "WiQ-gF-aK0"),
                            Constraint(firstItem: "urs-FR-alE", firstAttribute: "top", secondItem: "05h-Om-RXB", secondAttribute: "bottom", constant: nil, id: "Zzo-8b-CT0"),
                            Constraint(firstItem: "YZp-vA-FfM", firstAttribute: "top", secondItem: "qJg-av-K5X", secondAttribute: "bottom", constant: nil, id: "gJ6-od-Esa"),
                            Constraint(firstItem: "urs-FR-alE", firstAttribute: "leading", secondItem: "m2d-tO-WM7", secondAttribute: "leadingMargin", constant: nil, id: "kFa-9n-3nG"),
                            Constraint(firstItem: "uPU-dX-gwR", firstAttribute: "leading", secondItem: "m2d-tO-WM7", secondAttribute: "leadingMargin", constant: nil, id: "n1X-jE-BfV"),
                            Constraint(firstItem: "Ivd-u6-e9B", firstAttribute: "top", secondItem: "urs-FR-alE", secondAttribute: "bottom", constant: nil, id: "q8o-Co-Npv"),
                            Constraint(firstItem: "WcE-b9-OsW", firstAttribute: "leading", secondItem: "m2d-tO-WM7", secondAttribute: "leadingMargin", constant: nil, id: "rgT-NN-HF2")
            ], userLabel: nil)
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testXmlToTemporaryClass() {
        let testBundle = Bundle.allBundles.filter{ $0.bundleURL.absoluteString.hasSuffix("xctest/") }.first!
        let pathStirng = testBundle.path(forResource: "OtherView", ofType: "xml")
        let url = URL(fileURLWithPath: pathStirng!)
        let content = try! String(contentsOf: url, encoding: .utf8)
        
        let view = try! StoryboardParser.parse(string: content)
        XCTAssertEqual(view!, self.view)
    }
    
    func testTemporaryClassToJsonFormat() {
        let testBundle = Bundle.allBundles.filter{ $0.bundleURL.absoluteString.hasSuffix("xctest/") }.first!
        let pathStirng = testBundle.path(forResource: "OtherView", ofType: "json")
        let url = URL(fileURLWithPath: pathStirng!)
        let content = try! String(contentsOf: url, encoding: .utf8)
        XCTAssertEqual(VisualFormatLanguageTranslator.format(view: view, formatter: JsonFormatter()), content)
    }
}
