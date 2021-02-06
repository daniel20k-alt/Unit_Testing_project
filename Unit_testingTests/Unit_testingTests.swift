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
    
    func testWordCountsAreCorrect() {
        let playData = PlayData()
        
        XCTAssertEqual(playData.wordCounts.count(for: "pursue"), 15, "Pursue does not appear 15 times")

        XCTAssertEqual(playData.wordCounts.count(for: "winning"), 2, "Winning does not appear 2 times")
        XCTAssertEqual(playData.wordCounts.count(for: "amazed"), 18, "Amazed does not appear 15 times")
        
    }
    
//    verifying how much time it takes to load
    func testWordsLoadQuickly() {
        measure {
            _ = PlayData()
        }
    }
    
    
    func testUserFilterWorks() {
        let playData = PlayData()
        
            playData.applyUserFilter("100")
            XCTAssertEqual(playData.filteredWords.count, 495, "This word does not appear exactly 100 times")

            playData.applyUserFilter("1000")
            XCTAssertEqual(playData.filteredWords.count, 55, "This word does not appear exactly 55 times")

            playData.applyUserFilter("10000")
            XCTAssertEqual(playData.filteredWords.count, 1, "This word does not appear exactly 1 time")

            playData.applyUserFilter("test")
            XCTAssertEqual(playData.filteredWords.count, 56, "This word does not appear exactly 56 times")

            playData.applyUserFilter("swift")
            XCTAssertEqual(playData.filteredWords.count, 7, "This word does not appear exactly 7 times")

            playData.applyUserFilter("objective-c")
            XCTAssertEqual(playData.filteredWords.count, 0, "This word should not be here")
    }
}

