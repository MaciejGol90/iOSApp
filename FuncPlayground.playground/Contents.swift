import UIKit

func greeting1(){
    print("Hello")
}

func greeting2(name: String){
    print("Hello \(name)")
}
greeting2(name: "Maciej")

func greeting3(name:String) -> Bool{
    if name == "Maciej"{
        return true
    }else{
        return false
    }
    
}
greeting3(name: "Maciej")
