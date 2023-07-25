import UIKit


//Task 1: Function Basics

 func greetUser (_ x : String)-> String {
   return  "Welcome \(x) to tuwaiq academy"
 }

 print (greetUser ("Khalid"))
 print (greetUser ("Amal"))
 print (greetUser ("Maha"),"\n")


//Task 2: Function Overloading

func calculateArea(_ radius: Any )-> String{  //Takes the radius of a circle and returns its area.
   
    if let number = Double("\(radius)".description) {
        return "The area of the circle is \(Double.pi * pow(number , 2))"
        
    } else { return "its not a number" }
}

func calculateArea(_ length: Any, _ width : Any )->String{  //Takes the length and width of a rectangle and returns its area.
    
    if let number1 = Double("\(length)".description), let number2 = Double("\(width)".description ) {
        return "The area of the rectangle is \(number1 * number2) "
        
    } else { return "its not a number" }
}

print (calculateArea(8))
print (calculateArea(8,19),"\n")


//Task 3: Nested Functions
 
func mathOperation(_ x : Int , _ y : Int ,_ opration: String )->Int{
   
    let opration = opration.lowercased()
    
    
    func addition(_ x : Int ,_ y :Int)->Int{
         return x + y
    }
    func subtraction(_ x : Int ,_ y :Int)->Int{
        return x - y
    }
    func multiplication(_ x : Int ,_ y :Int)->Int{
        return x * y
    }
    func division(_ x : Int ,_ y :Int)->Int{
        return x / y
    }
    
    
    
    switch opration {
        
     case "add":
        return addition(x ,y)
     case "subtract":
        return subtraction(x ,y)

     case "multiply":
        return multiplication(x ,y)

     case "divide":
        return division(x ,y)

     default:
        return -0
        
    }
    
}

print("3 + 7 is equal ",mathOperation(3,7,"Add"))
print("2 - 4 is equal ",mathOperation(2,4,"Subtract"))
print("3 * 9 is equal ",mathOperation(3,9,"Multiply"))
print("10 / 2 is equal ",mathOperation(10,2,"Divide"),"\n")


//Task 4: Higher-Order Functions

var arr = [3,20,5,8,12,4,3,40,1,7,9,2,14]

print("The original array : ",arr)
print ("Mapping the array to 1 : ",arr.map { i in i + 1})
print ("Filtering the array to even elements : ",arr.filter { i in i % 2 == 0 })
print("The sum of all elements in the array : ",arr.reduce (0,{ firstNumber, seconedNumber in (firstNumber + seconedNumber) }) ,"\n")


//Task 5: Closures

let selfMultiply: (Int)-> (Int) = { X in
    return X * X
}

let arr2 = [1,2,3,4,5,6,7,8,9,10]
print ("Multiply each element in the array by itself: ")
arr2.map{ i in selfMultiply(i)}.forEach{ i in print (i) }
