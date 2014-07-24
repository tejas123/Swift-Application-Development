//
//  ViewController.swift
//  SwiftProject
//
//  Created by TheAppGuruz-iOS-101 on 24/07/14.
//  Copyright (c) 2014 TheAppGuruz-iOS-101. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Use of class variable
        var mark = Mark()
        println("Total Mark : \(mark.totalMark)")
    }

    func variableDeclarationExample() {
        var mutableDoubleVar: Double = 1.0  //Simple Variable
        let constantDoubleVar: Double = 1.0 //Constant Variable
        
        let intVar = 70        //Integer Variable
        let doubleVar = 70.0   //Double Variable
        
        //Use of Integer and Double variable in string
        let pen = 3
        let pencil = 5.0
        let string1 = "I have \(pen) pens"
        let string2 = "I have \(pencil) pencils"
    }
    
    func ifStatementExample() {
        let studentMark = [75, 85, 90, 95, 70, 80]
        for mark in studentMark {
            if mark > 80 {
                println("A Grade")
            } else {
                println("B Grade")
            }
        }
    }
    
    func optionalBindingExample() {
        var subject = ["Maths", "Physics", "Chemistry", "English"]
        func findSubject (data:String[], searchItem:String)-> Int? {
            var indexData: Int?
            for subject in data {
                if subject == searchItem {
                    return indexData
                }
                indexData = indexData! + 1
            }
            return nil
        }
    }
    
    func tupleExample() {
        //Unnamed Tuple
        let amountAndPercent: (Double, Double) = (200, 10)
        amountAndPercent.0
        amountAndPercent.1
        
        //Named Tuple
        let amountAndPercentNamed = (amount: 200, percentData:10)
        amountAndPercentNamed.amount
        amountAndPercentNamed.percentData
        
        //Returning Tuple
        let amountAndPercentReturning = caculateTotalAndPercent([75, 85, 90, 95, 70, 80])
        amountAndPercentReturning.amount
        amountAndPercentReturning.percentage
    }
    
    func caculateTotalAndPercent (data:Int[]) -> (amount:Int, percentage:Int) {
        var totalAmt: Int = 0
        let percentAmt: Int = 10
        for amountData in data {
            totalAmt = totalAmt + amountData
        }
        return (totalAmt, percentAmt)
    }
}

//Class Declaration
class Mark {
    var totalMark = 0
    func countTotalMark(mark:Int[]) {
        for markData in mark {
            totalMark += markData
        }
    }
}