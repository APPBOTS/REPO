//
//  APLICATIONTests.swift
//  APLICATIONTests
//
//  Created by JULIO BARBERAN on 27/3/15.
//  Copyright (c) 2015 JULIO BARBERAN. All rights reserved.
//

import UIKit
import XCTest
import APLICATION

class APLICATIONTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    func testViewDidLoad()
    {
        // Keep in mind we only have access to this if we improt our project above
        let v = ViewController()
        
        // Easy enough: assert that the ViewController.view is not nil
        XCTAssertNotNil(v.view, "View Did Not load")
    }
    func test_ViewDidLoad()
    {
        // Keep in mind we only have access to this if we improt our project above
        let v = ViewController()
        
        // Easy enough: assert that the ViewController.view is not nil
        XCTAssertNotNil(v.view, "View Did Not load")
    }
    func test_1ViewDidLoad()
    {
        // Keep in mind we only have access to this if we improt our project above
        let v = ViewController()
        
        // Easy enough: assert that the ViewController.view is not nil
        XCTAssertNotNil(v.view, "View Did Not load")
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    
}
