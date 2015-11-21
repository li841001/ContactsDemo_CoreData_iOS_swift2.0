//
//  Contact+CoreDataProperties.swift
//  ContactsDemo
//
//  Created by 李 jia on 15/9/17.
//  Copyright © 2015年 l+. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Contact {

    @NSManaged var name: String?
    @NSManaged var telephone: String?
    @NSManaged var organization: String?
    @NSManaged var qq: String?
    @NSManaged var email: String?
    @NSManaged var otherinfo: String?

}
