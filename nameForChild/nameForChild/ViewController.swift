//
//  ViewController.swift
//  nameForChild
//
//  Created by Maciej Golianek on 04/02/2020.
//  Copyright © 2020 Maciej Golianek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBAction func girlButton(_ sender: UIButton) {
        let nameOfGirl = ["Abigail", "Ada", "Adela", "Adelajda", "Adriana", "Adrianna", "Agata", "Agnieszka", "Aida", "Aisza", "Aldona", "Aleksa", "Aleksandra", "Aleksja", "Alfreda", "Alicja", "Alina", "Amanda", "Amelia", "Amonaria", "Anastazja", "Anatola", "Anatolia", "Andrea", "Andżela", "Andżelika", "Aneta", "Angela", "Angelika", "Angelina", "Aniela", "Anita", "Anna", "Antonina", "Apolonia", "Arabela", "Ariadna", "Ariela", "Arkadia", "Arleta", "Augustyna", "Aurelia", "Aurora", "Balbina", "Balladyna", "Barbara", "Beata", "Berenika", "Bernadeta", "Bernarda", "Bianka", "Bibiana", "Blanka", "Bogdana", "Bogna", "Bogumiła", "Bogusława", "Bohdana", "Bolesława", "Bona", "Bonifacja", "Bożena", "Brenda", "Bronisława", "Brygida", "Carmen", "Cecylia", "Celestyna", "Celia", "Celina", "Cyntia", "Cyryla", "Czcibora", "Czesława"]
        
        nameLabel.text = nameOfGirl.randomElement()
    }
    
    @IBAction func boyButton(_ sender: UIButton) {
    let nameOfBoy = ["Abel", "Adam", "Adrian", "Agaton", "Alan", "Albert", "Albin", "Aleksander", "Aleksy", "Alfred", "Alwin", "Amadeusz", "Amand", "Ambroży", "Amon", "Amonariusz", "Anastazy", "Anatol", "Anatoliusz", "Andrzej", "Antoni", "Antonin", "Apolinary", "Apollo", "Apoloniusz", "Ariel", "Arkadiusz", "Armand", "Armin", "Arnold", "Aron", "Artur", "August", "Augustyn", "Aureliusz", "Baldwin", "Baltazar", "Barabasz", "Barnaba", "Bartłomiej", "Bartosz", "Bazyli", "Benedykt", "Beniamin", "Bernard", "Bibian", "Błażej", "Bogdan", "Bogumił", "Bogusław", "Bohdan", "Bolesław", "Bonifacy", "Borys", "Brajan", "Brosław", "Bruno", "Brunon", "Bytomir", "Celestyn", "Cezariusz", "Cezary", "Chrystian", "Cyprian", "Cyrus", "Cyryl", "Czcibor", "Czesław"]
        nameLabel.text = nameOfBoy.randomElement()

    }
}

