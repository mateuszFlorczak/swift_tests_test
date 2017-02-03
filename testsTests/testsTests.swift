//
//  testsTests.swift
//  testsTests
//
//  Created by Mateusz Florczak on 12/05/16.
//  Copyright © 2016 test. All rights reserved.
//

import XCTest
@testable import tests

class testsTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testKmNaMile() {
        // This is an example of a functional test casess
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let kmStart: Float = 1.0
        let mile = Konwerter.sharedInstance.zamien(kmStart, dlaTypuKonwersji: .kmNaMile)
        let km = Konwerter.sharedInstance.zamien(mile, dlaTypuKonwersji: .mileNaKm)
        XCTAssert(kmStart == km)
    }

}
