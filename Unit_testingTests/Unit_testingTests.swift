//
//  Unit_testingTests.swift
//  Unit_testingTests
//
//  Created by DDDD on 31/01/2021.
//

import XCTest
@testable import Unit_testing

class Unit_testingTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAllWordsLoaded() {
        let playData = PlayData()
//        XCTAssertEqual(playData.allWords.count, 0, "all words must be 0")
        XCTAssertEqual(playData.allWords.count, 18440, "all words was not 18440") //updated correct test
    }
}
