//
//  MyPractice.swift
//  
//
//  Created by Deepashri Khawase on 25.11.18.
//

import Foundation

func DaysInMonth (month: Int) {
    
    switch month {
    case 1 :
        print("January has 31 days.")
    case 2 :
        print("February has 28 days.")
    default :
        print(" Months have 30 or 31 days generally.")
    }
}
DaysInMonth(month: 1)



func daysInMonthWithDictionary (month:Int ){
    let  monthCount = [  1 : [31] ,
                         2: [28],3:[31],4 : [30] ,
                         5:[31] ,6 : [30],7 : [31],8:[31],9 : [30],10 : [31],11 :[30],12 : [31]]
    for (monthno, days) in monthCount {
        print("There are \(days) days in month no \(monthno). " )
    }
}
daysInMonthWithDictionary(month: 12)

let array1 = [1, 2, 3]
let array2 = [4, 5, 6]

let flattenArray = [array1, array2].flatMap({ (element: [Int]) -> [Int] in
    return element
    
})
print(flattenArray) // prints [1, 2, 3, 4, 5, 6]


let numberArrayForFlatmap = [[1.2, 3.4,7.1],[3.9,1.2,2.7]]
let flatmapArrayOfNumbers = numberArrayForFlatmap.compactMap { (array) -> ([Double]) in return array }



func mergeArraynew ( one: [Double], two: [Double]){
    let collections = [one, two]
    var newcollections = collections.flatMap {
        DoubleArray in DoubleArray
    }
    for index in 0..<newcollections.count{
        newcollections[index]*=2
    }
    print(newcollections)
}
mergeArraynew(one:[2.3,4.5,6.7], two:[2.3,4.5,6.7])

var arrayOfArrays = [ [1, 1], [2, 2], [3, 3] ]
var flattenedArray = arrayOfArrays.flatMap { array in
    return array.map { integer in
        return integer * 2
    }
}
print(flattenedArray)



func maxMinOfArray (Arry: [Int]){
    //    let Arry = [11, 2, 7, 5, 21]
    var result = Arry.sorted(){
        $0 > $1
        
    }
    print("max from result: \(result[0])")
    
    result = Arry.sorted(){
        $0 < $1
        
    }
    print("min from result: \(result[0])")
}
let Arry = [11, 2, 7, 5, 21]
maxMinOfArray(Arry: Arry)




func fahrenheitToCelsius(tempInF:Double) ->Double {
    let celsius = (tempInF - 32.0) * (5.0/9.0)
    print("The temperature is : \(celsius) degree celsius .")
    return celsius as Double
}
fahrenheitToCelsius(tempInF:100)



func average( intarray: [Int]){
    //var intArray = [10, 15, 5, 7, 13]
    let sumArray = intArray.reduce(0, +)
    let avgArrayValue = sumArray / intArray.count
    print(avgArrayValue)
}
let intArray = [10, 15, 5, 7, 13]
average(intarray: intArray)

func squareFootOfNumber(number: Int) ->Double {
    let n = number
    let r = sqrt(Double(n))
    
    print("square root of number \(number) is \(r)")                 // 3037000490
    
    return(r)
    
}

squareFootOfNumber(number: 24)
