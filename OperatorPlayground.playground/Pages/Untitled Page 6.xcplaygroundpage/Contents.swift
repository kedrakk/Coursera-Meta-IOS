import Cocoa

let credentials = (password:"",passcode:-1111)
if(!credentials.password.isEmpty && credentials.passcode>0){
    print("Password is \(credentials.password) and passcode is \(credentials.passcode)")
}
else{
    print("Invalid credentials")
}

let fullCredentials = (password: "pass", passcode:1111 )
if fullCredentials.password=="" || fullCredentials.passcode<0
{
    print("Invalid credentails")
}
else{
    print("Please login with correct credentials")
}

var numbers = [1,2]
numbers + [5]
print(numbers.count)
