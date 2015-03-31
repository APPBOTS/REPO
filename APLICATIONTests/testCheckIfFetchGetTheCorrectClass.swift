//
//  testCheckIfFetchGetTheCorrectClass.swift
//  APLICATION
//
//  Created by JULIO BARBERAN on 31/3/15.
//  Copyright (c) 2015 JULIO BARBERAN. All rights reserved.
//

import UIKit
import XCTest
import CoreData
import APLICATION

class testCheckIfFetchGetTheCorrectClass: XCTestCase {
    
    var moc = NSManagedObjectContext()
    
    override func setUp() {
        super.setUp()
        var mmol = NSManagedObjectModel.mergedModelFromBundles(nil)
        var psc = NSPersistentStoreCoordinator(managedObjectModel: mmol!)
        var pstore = NSPersistentStore()
        pstore = psc.addPersistentStoreWithType(NSInMemoryStoreType, configuration: nil, URL: nil, options: nil, error: nil)!
        moc.persistentStoreCoordinator = psc
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testCheckIfFetchGetTheCorrectClass() {
        
        let entity = NSEntityDescription.entityForName("Entity", inManagedObjectContext: moc)
        let origen = Entity(entity: entity!, insertIntoManagedObjectContext: moc)
        
        origen.menuText = "Julio"
        
        var origenes = [Entity]()
        
        var request = NSFetchRequest(entityName: "Entity")
        var e: NSError?
        if let results = moc.executeFetchRequest(request, error: &e) {
            println("results: \n\(results.description)\nCount:\(results.count)")
            if let downcastedSwiftArray = results as? [Entity] {
                // downcastedSwiftArray contains only UIView objects
                origenes = downcastedSwiftArray
            } else  {
                XCTAssert(false, "Down Cast Error")
            }
            println("Bosses : \n\(origenes.description)")
        } else {
            println("fetch error: \(e!.localizedDescription)")
            abort();
        }
        
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")

    }
}
