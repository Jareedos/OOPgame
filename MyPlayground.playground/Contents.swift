//: Playground - noun: a place where people can play

import UIKit


//var x = 1
//repeat{
//    if x % 3 == 0 && x % 5 == 0{
//        print("BooYa")
//      } else if x % 5 == 0{
//        print("Ya")
//      } else if x % 3 == 0{
//        print("Boo")
//      }
//x += 1
//    
//} while x < 201


//for var x = 1; x < 201; x+=1 {
//    if x % 3 == 0{
//      print("Boo")
//    } else if x % 5 == 0{
//      print("Ya")
//    } else if x % 3 == 0 && x % 5 == 0{
//      print("BooYa")
//    }
//}

var webster: [String: String] = ["krill": "any of the small crustaceans", "fire":"a burning mass of material"]

var anotherDictionary: [Int:String] = [44: "My favorite number", 32: "Man I hate this number"]

if let krill = webster["krill"]{
    print(krill)
}

if webster.isEmpty{
    print("Our dictionary is quite the empty")
}

var highScore: [String:Int] = ["spentak": 401, "playa21": 200, "deathbySpongebob": 500]

for (user, score) in highScore {
    print("\(user): t\(score)")
}
