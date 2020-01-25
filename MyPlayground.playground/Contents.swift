func loveCalculator(){
    let loveChance = Int.random(in: 0...100)
    if loveChance == 100 {
        print("this is love")
    }else{print("szukaj dalej")}
}
loveCalculator()
