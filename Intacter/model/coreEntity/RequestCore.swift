//
//  RequestCore+CoreDataProperties.swift
//  
//
//  Created by Muraino Yakubu on 5/23/20.
//
//

import Foundation
import CoreData


class RequestCore : NSManagedObject{

    @NSManaged public var id: String?
    @NSManaged public var staff_id: String?
    @NSManaged public var receiver_name: String?
    @NSManaged public var receiver_phone: String?
    @NSManaged public var account_no: String?
    @NSManaged public var account_name: String?
    @NSManaged public var amount: Double
    @NSManaged public var item_id: String?
    @NSManaged public var status: String?
    @NSManaged public var date: String?
    @NSManaged public var invoice: String?
    @NSManaged public var signature: String?
    @NSManaged public var bank_name: String?
    @NSManaged public var lname: String?
    @NSManaged public var fname: String?
    @NSManaged public var email: String?
    @NSManaged public var mobile: String?
    @NSManaged public var department: String?

    
    static var entityName : String{
         return "RequestCore"
     }
}
