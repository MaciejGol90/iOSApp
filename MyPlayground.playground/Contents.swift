//func loveCalculator(){
//    let loveChance = Int.random(in: 0...100)
//    if loveChance > 80 {
//        print("this is love")
//    } else if loveChance > 40 {
//        print("może może zobaczymy")
//    } else {print("szukaj dalej")
//    }
//}
//loveCalculator()

//let array = [
//[1, 2, 3, 4, 5, 6, 7, 8, 9]
//]
//
//print (array[0][8 ])

struct Town {
    let name : String
//        = "MaciekTown"
    var citizen: [String]
//        = ["Maciek", "Karolina"]
    var buildings: [String:Int]
//        = ["home" : 100, "flat" : 300, "government building" : 20]
    func fortyfy() {
        print("Defense increased!")
    }
}

//var myTown = Town()
//print(myTown.buildings)
//print(myTown.citizen)
//myTown.citizen.append("Franek")
//print(myTown.citizen)
