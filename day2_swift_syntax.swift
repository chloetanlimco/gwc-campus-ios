// Import necessary libraries here
import UIKit // provides the infrastructure for your applications, allows all the UI elements to exist


/* --------------------------------------------------------------------------------------------------------- */
/* FUNCTIONS */

// defining functions
func myFunction(parameter: String) // can access the variable parameter between braces, but nowhere else
{
    print(parameter)
}
// remember to call the function outside of your definition! you can call functions in multiple places
myFunction(parameter: "hello!") // prints: hello!



// functions can be void (no return value), as in the previous example
// defining functions with return values
func myFunction(num: Int, multiplier: Int) -> Int
{
    return num*multiplier
}
// set value of a constant or variable to the function call
let functionReturnValue = myFunction(num: 3, multiplier: 4)
print (functionReturnValue) // prints: 12

/* --------------------------------------------------------------------------------------------------------- */
/* VARIABLE SCOPE */

// Global variables: accessible from anywhere in your code, declared outside of all functions and classes
var myVar : Int

func myFunction()
{
    // myVar is accessible here
    myVar = 4 // sets the variable value
}
print(myVar) // ERROR: myVar doesn't have a value yet!
myFunction()
print(myVar) // prints: 4



// Parameters: accessible only within the function, but passed into the function
func myFunction(parameter: String)
{
    print(parameter)
}
print(parameter) // ERROR: parameter is not a valid variable outside of the function definition
myFunction(parameter: "Hello, World!") // prints: Hello, World!
print(parameter) // ERROR: parameter is not a valid variable outside of the function definition



// Local variables: accessible only within the function, intialized within the function
func myFunction()
{
    let myVar : Int = 4
    print(myVar)
}
print(myVar) // ERROR: variable does not exist outside of the function
myFunction() // prints: 4
print(myVar) // ERROR: variable does not exist outside of the function

/* --------------------------------------------------------------------------------------------------------- */
/* OBJECT ORIENTED PROGRAMMING: */

// defining classes
class myClass {
    
    // member variables or constants that are associated with this class
    var myVar : Int // if you want to set this value when you create the object
    let secondVar : Int = 4 // if it's always going to be a specific value (in this case, 4)
    var myOtherVar : Int = 4 // if you want a default
    
    // member functions, a.k.a. methods
    // can only call these functions on an object
    func myMemberFunction() {
        // can update variables here
        myVar += 6 // adds 6 to the current value of myVar
    }
    
    func printVars() {
        print("myVar: \(myVar)")
        print("secondVar: \(secondVar)")
        print("myOtherVar: \(myOtherVar)")
    }
    
    // initializer (if this is not here, the compiler creates a default constructor for you)
    // because there is an init function, this gets called every time you do myClass(....)
    init(firstVariable: Int, myOtherVar: Int)
    {
        myVar = firstVariable
        self.myOtherVar = myOtherVar // how to resolve complications with two of the same variable name. basically, self refers to the class
    }
}

// create an object/instance of the class a.k.a. using a class as a template
var myObject = myClass(firstVariable: 4, myOtherVar: 3) // myObject.myVar = 4, myObject.myOtherVar = 3
myMemberFunction() // ERROR: this cannot run without being connected to an object
myObject.myMemberFunction() // updates myObject.myVar from 4 to 10
myObject.printVars() // prints: myVar: 10
                            //  secondVar: 4
                            //  myOtherVar: 3
myObject.myMemberFunction() // updates myObject.myVar from 10 to 16
myObject.printVars() // prints: myVar: 16
                            //  secondVar: 4
                            //  myOtherVar: 3

/* --------------------------------------------------------------------------------------------------------- */
