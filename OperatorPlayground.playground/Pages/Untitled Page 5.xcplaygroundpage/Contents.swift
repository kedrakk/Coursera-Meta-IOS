import Cocoa

var password = "1234"
let passcode:Int? = Int(password)

print("Passcode: \(passcode!)")

password = "Hello World"
if let code:Int = Int(password)
{
    print("New passcode: \(code)")
}
else
{
    print("Invalid passcode!")
}

let accessCode:Int
if let code:Int = Int(password)
{
    accessCode = code
}
else
{
    accessCode = 1111
}
print("The passcode is \(accessCode)")

let firstPassword = "hello"
let secondPassword = "world"
let firstPasscode:Int
let secondPasscode:Int
if let firstCode = Int(firstPassword), let secondCode = Int(secondPassword)
{
    firstPasscode = firstCode
    secondPasscode = secondCode
}
else{
    firstPasscode = 1111
    secondPasscode = 2222
}
print("The first passcode is: \(firstPasscode) and second is: \(secondPasscode)")

