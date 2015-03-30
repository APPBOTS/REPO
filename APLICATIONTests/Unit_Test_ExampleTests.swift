//
//  Unit_Test_ExampleTests.swift
//  APLICATION
//
//  Created by JULIO BARBERAN on 30/3/15.
//  Copyright (c) 2015 JULIO BARBERAN. All rights reserved.
//

import UIKit
import XCTest
import APLICATION

class Unit_Test_ExampleTests: XCTestCase {

    // Obviously we can't do much in our app without a view on our root View Controller
    func testViewDidLoad()
    {
        // Keep in mind we only have access to this if we improt our project above
        let v = ViewController()
        
        // Easy enough: assert that the ViewController.view is not nil
        XCTAssertNotNil(v.view, "View Did Not load")
    }

}
