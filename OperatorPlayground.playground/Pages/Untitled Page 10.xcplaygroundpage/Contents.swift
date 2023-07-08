import Cocoa

class LocalFile{
    let name:String;
    let fileExtension:String;
    init(name:String,fileExtension:String){
        self.name=name
        self.fileExtension=fileExtension
    }
    var fullFileName:String{
        return name+fileExtension
    }
}

let file = LocalFile(name: "Image", fileExtension: ".png")
print(file.fullFileName)

class Tax {
  var amount: Int = 5
}
var tax1 = Tax()
var tax2 = tax1
tax1.amount = 20
print("\(tax1.amount), \(tax2.amount)")
