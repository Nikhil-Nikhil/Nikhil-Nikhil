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
