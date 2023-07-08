import Cocoa

let freeApp = true
if freeApp {
    print("ou are using the free version of the app. Buy the full version of the app to get access to all of its features.")
}

let morningTemperature = 70
let eveningTemperature = 80
if morningTemperature < eveningTemperature {
    print("Evening temperature is greater than morning one")
}
else {
    print("Morning temperature is greater than evening one")
}

let temperatureDegree = "Fahrenheit"
if temperatureDegree == "Fahrenheit" {
    print("Temperature degree measurement is Fahrenheit")
}
else{
    print("Temperature degree measurement is Celsius")
}
