//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    private var engine = "4 cylinder"
    private var color = "Silver"
    private var odometer = 0
    
    init(engine:String, color:String){
        self.engine = engine
        self.color = color
    }
    
    init(){
        
    }
    
    func enterMiles(miles: Int) {
        odometer += miles
    }
}


var srx = Vehicle(engine: "6 Cylinder", color: "Royal Blue")

var volvo = Vehicle()

print(srx.color)
print(volvo.color)