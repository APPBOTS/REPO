//
//  Entity.swift
//  APLICATION
//
//  Created by JULIO BARBERAN on 27/3/15.
//  Copyright (c) 2015 JULIO BARBERAN. All rights reserved.
//

import Foundation
import CoreData


public class Entity: NSManagedObject {

    @NSManaged public var menuText: String
    @NSManaged public var createdAt: NSDate

}
