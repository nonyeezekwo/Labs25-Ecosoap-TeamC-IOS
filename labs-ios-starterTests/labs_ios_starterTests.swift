//
//  labs_ios_starterTests.swift
//  labs-ios-starterTests
//
//  Created by Karen Rodriguez on 8/13/20.
//  Copyright © 2020 Spencer Curtis. All rights reserved.
//

import XCTest
@testable import labs_ios_starter

class labs_ios_starterTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testPropertyDictInit() throws {
        let dict = try JSONSerialization.jsonObject(with: propertyJSON, options: []) as! [String: Any]
        let property = Property(dictionary: dict)
        XCTAssertNotNil(property)
    }

    func testPickupDictInit() throws {
        let dict = try JSONSerialization.jsonObject(with: pickupJSON, options: []) as! [String: Any]
        print("Is something here?")
        print(dict["id"] as! String)
        let pickup = Pickup(dictionary: dict)
        XCTAssertNotNil(pickup)
    }

}
