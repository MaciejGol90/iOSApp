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
    var buildings: [String : Int]
//        = ["home" : 100, "flat" : 300, "government building" : 20]
    
    init(name: String, citizen: [String], buildings: [String : Int]) {
        self.name = name
        self.citizen = citizen
        self.buildings = buildings
    }
    func fortyfy() {
        print("Defense increased!")
    }
}
var anotherTown = Town(name: "MaciekTown", citizen: ["Karolina", "Maciek"], buildings: ["home":1000, "flat":2])
anotherTown.citizen.append("Franio")
print(anotherTown.buildings)
print(anotherTown.fortyfy())
print(anotherTown.citizen)
var ghostTown = Town(name: "GhostTown", citizen: [], buildings: ["cementary": 1])
anotherTown.citizen.append("Staś")
ghostTown.fortyfy()

//var myTown = Town()
//print(myTown.buildings)
//print(myTown.citizen)
//myTown.citizen.append("Franek")
//print(myTown.citizen)
