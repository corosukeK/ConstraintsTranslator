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
        
        self.view =
            View(
                id: "m2d-tO-WM7",
                subviews: [
                    View(
                        id: "VNq-M2-OJw",
                        subviews: [
                            View(
                                id: "5dM-9U-Bzm",
                                subviews: [],
                                constraints: []
                            )
                        ],
                        constraints: [
                            Constraint(
                                firstItem: "5dM-9U-Bzm",
                                firstAttribute: "leading",
                                secondItem: "VNq-M2-OJw",
                                secondAttribute: "leading",
                                id: "4f1-tv-VRC"
                            ),
                            Constraint(
                                firstAttribute: "bottom",
                                secondItem: "5dM-9U-Bzm",
                                secondAttribute: "bottom",
                                id: "EzN-e7-KZC"
                            ),
                            Constraint(
                                firstItem: "5dM-9U-Bzm",
                                firstAttribute: "top",
                                secondItem: "VNq-M2-OJw",
                                secondAttribute: "top",
                                id: "QNX-Xb-ufF"
                            ),
                            Constraint(
                                firstAttribute: "trailing",
                                secondItem: "5dM-9U-Bzm",
                                secondAttribute: "trailing",
                                id: "RdQ-Ff-T7T"
                            )
                        ]
                    ),
                    View(
                        id: "ijL-f7-0up",
                        subviews: [
                            View(
                                id: "9KZ-T6-It0",
                                subviews: [],
                                constraints: []
                            )
                        ],
                        constraints: [
                            Constraint(
                                firstItem: "9KZ-T6-It0",
                                firstAttribute: "top",
                                secondItem: "ijL-f7-0up",
                                secondAttribute: "top",
                                id: "LPy-7b-Vmg"
                            ),
                            Constraint(
                                firstItem: "9KZ-T6-It0",
                                firstAttribute: "leading",
                                secondItem: "ijL-f7-0up",
                                secondAttribute: "leading",
                                id: "ecO-Yt-PqP"
                            ),
                            Constraint(
                                firstAttribute: "trailing",
                                secondItem: "9KZ-T6-It0",
                                secondAttribute: "trailing",
                                id: "gpf-sJ-rXW"
                            ),
                            Constraint(
                                firstAttribute: "bottom",
                                secondItem: "9KZ-T6-It0",
                                secondAttribute: "bottom",
                                id: "hJ7-3g-mH5"
                            )
                        ]
                    ),
                    View(
                        id: "ML0-JM-r8i",
                        subviews: [
                            View(
                                id: "KoM-oH-bWL",
                                subviews: [],
                                constraints: []
                            )],
                        constraints: [
                            Constraint(
                                firstAttribute: "bottom",
                                secondItem: "KoM-oH-bWL",
                                secondAttribute: "bottom",
                                id: "Dru-EJ-sVd"
                            ),
                            Constraint(
                                firstItem: "KoM-oH-bWL",
                                firstAttribute: "top",
                                secondItem: "ML0-JM-r8i",
                                secondAttribute: "top",
                                id: "MNC-I3-rKo"
                            ),
                            Constraint(
                                firstAttribute: "trailing",
                                secondItem: "KoM-oH-bWL",
                                secondAttribute: "trailing",
                                id: "UBU-WN-Yjt"
                            ),
                            Constraint(
                                firstItem: "KoM-oH-bWL",
                                firstAttribute: "leading",
                                secondItem: "ML0-JM-r8i",
                                secondAttribute: "leading",
                                id: "xfJ-ci-9LF"
                            )
                        ]
                    ),
                    ],
                constraints: [
                    Constraint(
                        firstItem: "VNq-M2-OJw",
                        firstAttribute: "top",
                        secondItem: "05h-Om-RXB",
                        secondAttribute: "bottom",
                        id: "3FZ-cU-0vv"
                    ),
                    Constraint(
                        firstItem: "VNq-M2-OJw",
                        firstAttribute: "leading",
                        secondItem: "m2d-tO-WM7",
                        secondAttribute: "leadingMargin",
                        id: "4GM-Ao-NfL"
                    ),
                    Constraint(
                        firstItem: "ML0-JM-r8i",
                        firstAttribute: "width",
                        secondItem: "VNq-M2-OJw",
                        secondAttribute: "width",
                        id: "503-QC-onw"
                    ),
                    Constraint(
                        firstItem: "ijL-f7-0up",
                        firstAttribute: "leading",
                        secondItem: "VNq-M2-OJw",
                        secondAttribute: "trailing",
                        id: "7d8-1X-1Wh"
                    ),
                    Constraint(
                        firstItem: "ML0-JM-r8i",
                        firstAttribute: "leading",
                        secondItem: "ijL-f7-0up",
                        secondAttribute: "trailing",
                        id: "A6U-l4-gl7"
                    ),
                    Constraint(
                        firstItem: "ML0-JM-r8i",
                        firstAttribute: "top",
                        secondItem: "05h-Om-RXB",
                        secondAttribute: "bottom",
                        id: "GVh-sW-pgs"
                    ),
                    Constraint(
                        firstItem: "HRC-tA-4h8",
                        firstAttribute: "top",
                        secondItem: "ML0-JM-r8i",
                        secondAttribute: "bottom",
                        id: "O5k-f8-qjb"
                    ),
                    Constraint(
                        firstItem: "ijL-f7-0up",
                        firstAttribute: "top",
                        secondItem: "05h-Om-RXB",
                        secondAttribute: "bottom",
                        id: "WSJ-hs-ehZ"
                    ),
                    Constraint(
                        firstItem: "HRC-tA-4h8",
                        firstAttribute: "top",
                        secondItem: "ijL-f7-0up",
                        secondAttribute: "bottom",
                        id: "cDx-5Q-kBQ"
                    ),
                    Constraint(
                        firstItem: "HRC-tA-4h8",
                        firstAttribute: "top",
                        secondItem: "VNq-M2-OJw",
                        secondAttribute: "bottom",
                        id: "dGx-4W-Kwa"
                    ),
                    Constraint(
                        firstAttribute: "trailingMargin",
                        secondItem: "ML0-JM-r8i",
                        secondAttribute: "trailing",
                        id: "fDS-rI-XGL"
                    ),
                    Constraint(
                        firstItem: "ijL-f7-0up",
                        firstAttribute: "width",
                        secondItem: "VNq-M2-OJw",
                        secondAttribute: "width",
                        id: "wuD-ns-uYH"
                    )
                ]
        )
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
