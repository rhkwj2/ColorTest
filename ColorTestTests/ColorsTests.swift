//
//  ColorsTests.swift
//  ColorTestTests
//
//  Created by Kim Yeon Jeong on 2020/1/11.
//  Copyright © 2020 Kim Yeon Jeong. All rights reserved.
//

import XCTest
@testable import ColorTest

class ColorsTests: XCTestCase {

    var color: KimColor!
    
    override func setUp() {
        color = .blue
    }

    override func tearDown() {
        color = nil
    }

    func testGetUIColor() {
        let uiColor = color.getUIColor()
        XCTAssert(uiColor.isKind(of: UIColor.self))
        XCTAssert(uiColor == .systemBlue)
    }
    
//    func testGetName() {
//        let colorName = color.getName()
//        XCTAssert(type(of: colorName) == type(of: String.class))
//        XCTAssert(colorName == "blue")
//    }
    
//    func testGetExplanation() {
//        let colorExplanation = color.getExplanation()
//        XCTAssert(colorExplanation.isKind(of: type(of: String)))
//        XCTAssert(colorExplanation == "blue")
//    }
}
