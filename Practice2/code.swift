//
//  code.swift
//  Practice2
//
//  Created by MacStudent on 2019-06-10.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class student{
    
    var studentId: Int = 0   //no nil
    var firstName: String? //= nil//optional
    var lastName: String! //= nil//optional
    var gender: Bool = false
    var result: String = "Pass"
    
    
    func display()
    {
        print ("Student Id : \(self.studentId)")
        print ("First Name : \(self.firstName ?? "[ No First name]")")
        print ("Last name: \(self.lastName)")
        print ("gender : \(self.gender)")
        print ("Result : \(self.result)")    }
    
    func printData()
    {
        print ("Student Id : \(self.studentId)")
        print ("First Name : \(String(describing: self.firstName ?? "Hello"))")
        print ("Last name: \(self.lastName)")
        print ("gender : \(self.gender)")
        print ("Result : \(self.result)")    }
    func getFirstName() -> String{
        //return self.firstName ?? "No name"
        
        //return sel.firstName!
        if let name = self.firstName{
            return name
        }
        return "No Name"
    }
    
    func setValues()
    {
        self.studentId = 1
        self.firstName = "Nikhil"
        self.lastName = "Nikhil"
        self.gender = true
        self.result = "false"
    }
}
