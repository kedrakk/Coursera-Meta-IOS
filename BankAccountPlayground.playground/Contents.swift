import Cocoa

class BankAccount{

    var accountType = ""
    
    func welcomeMessage(){
        print("Welcome to your virtual bank system. ")
    }
    
    func onBoardingMessage(){
        print("What kind of account would you like to open? ")
        print("1. Debit account ")
        print("2. Credit account ")
    }
    
    func makeAccount(numberPadKey:Int){
        print("The selected option is \(numberPadKey)")
        switch numberPadKey
        {
        case 1:
            accountType="debit";break;
        case 2:
            accountType="credit";break;
        default:
            print("Invalid input: \(numberPadKey)");return;
        }
        print("You have opened a \(accountType) account")
    }
}

let bankSystem = BankAccount()
bankSystem.welcomeMessage()

repeat{
    bankSystem.onBoardingMessage()
    let selectedValue = Int.random(in: 1...3)
    bankSystem.makeAccount(numberPadKey: selectedValue)
}while bankSystem.accountType.isEmpty
