//
//  main.swift
//  practice3
//
//  Created by MacStudent on 2019-06-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var a = [10, 20, 30, 40, 50, 60 ,70, 80, 90, 100]
print(a[0])
// in valid print(a[10])
for x in a{
    print(x)
}
a.append(110)  // add at end of array
a.append(120)
//a[10] = 110
print(a[10])

print("---------------")
  print(a.capacity)
print(a.count)

if a.isEmpty
{
    print("array is empty")
}
else{
    print("Array contains some elements")
}
var x = Int()
print(x)  // default value 0
//var b:[String]var b:[String]? (no append method)it will use by !  but fatel error error
var country:[String]! // or !
country = [String]()
country = country + ["Pak", "Russia"]

// error if let c = b{
if var c = country{

country.append("India")  // country.append
country.append("Canada")
country.append("USA")
    print("no. of contries : \(c.count)")
    print(c)
}

print(" number Of contries : \(country.count)")
//b = [String]()
//b!.append("India")  // fatel error
//b!.append("Canada")
//b!.append("USA")
//var arrayInts = [Int]()

/*func sortFunc(num1: Int, num2: Int) -> Bool {
    return num1 < num2
}

let numbers = [0, 2, 3, 5, 10, 2]
let sortedNumbers = sorted(numbers, sortFunc)
*/
func printN(n: Int) { // recursion array example
    if( n == 0 )
    {
        return
    }
    else{
        printN(n: n-1)
        print(n)
    }
    
}
print("************")
printN(n: 10)

func sumN(n: Int) -> Int{// recursion array example
    //var sum = 0
    if( n == 0 )
    {
        return 0
    }
    else{
        return n + sumN(n: n-1)
        
    }

}
print("************")
print("Sum :\(sumN(n: 10))")

func printTheReverseArray(arr: [String],index: Int)
{
    if arr.isEmpty
    {
        return
    }
    else{
        if index == -1
        {
        return
    }
    else
    {
        print(arr[index])
        printTheReverseArray(arr: arr, index: index - 1)
    }
}
}

printTheReverseArray(arr: country, index: country.count-1)

var countrydictionary = ["key": "value",
                         "IND": "INDIA",
                         "CAD": "CANADA",
                         "USA": "UNITED STATE OF AMERICA"
                        
                        ]
print(countrydictionary)
print(countrydictionary["USA"] ?? "Key not exists")
print(countrydictionary["USA"]!)
print(countrydictionary["PAK"] ?? "Key not exists")

if let c = countrydictionary["PAK"]// will dispaly any values and apk = null
{
    print(c)
}
for c in countrydictionary
{
    print(c)
    print(c.key, c.value)
}
countrydictionary  ["PAK"] = "Pakistan"
for (k,v) in countrydictionary
{
    print(k,v)
}


var newC = Dictionary<String, Int>()// declaration
var newArray : Array<Int>

var mySet = Set<String>()
mySet.insert("INDIA")
mySet.insert("CANADA")
mySet.insert("USA")
mySet.insert("INDIA")
print(mySet)
mySet.insert("RUSSIA")
print(mySet)

var mySet2 = Set<String>()
mySet2.insert("INDIA")
mySet2.insert("PAKISTAN")
mySet2.insert("NEPAL")
print(mySet2)

let interSet = mySet.intersection(mySet2)
print(interSet)

let unionSet = mySet.union(mySet2)
print(unionSet)

let disJoin = mySet.isDisjoint(with: mySet2)
print(disJoin)

 let minusSet = mySet.subtracting(mySet2)
print(minusSet)

let symdiffSet = mySet.symmetricDifference(mySet2) // common in both is removed
print(symdiffSet)

//let ss = [0: 100, 1: 200]
//print(ss)

var ss = Dictionary<String, Any>()
ss["int"] = 100
ss["string"] = "Hello World"
ss["dict"] = ["k":"v","ko": 100]
ss["tuple"] = (100,200)
for item in ss{
    if item.value is Int{
        print("I am Integer :\(item)")
    }
    if item.value is String{
        print("I am String :\(item)")
    }
    if item.value is Dictionary<String, Any>
    {
        print("I am Dictionary :\(item)")
    }
    if item.value is (Int,Int)
    {
        print("I am tuple :\(item)")
    }
    
}
