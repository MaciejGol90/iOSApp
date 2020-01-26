func loveCalculator(){
    let loveChance = Int.random(in: 0...100)
    if loveChance > 80 {
        print("this is love")
    } else if loveChance > 40 {
        print("może może zobaczymy")
    } else {print("szukaj dalej")
    }
}
loveCalculator()
 
