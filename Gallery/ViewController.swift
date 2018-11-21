//
//  ViewController.swift
//  Gallery
//
//  Created by Roberto Evangelista on 21/11/18.
//  Copyright © 2018 Roberto Evangelista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myGallery: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var selected = 0
    
    @IBAction func previousButton(_ sender: UIButton) {
        if houses.index(before: selected) >= 0 {
            selected = houses.index(before: selected)
        } else {
            selected = houses.count - 1
        }
        changePicture()
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        if houses.index(after: selected) == houses.count {
            selected = 0
        } else {
            selected += 1
        }
        changePicture()
    }
    
    func changePicture() {
        myGallery.image = houses[selected].familyCrest
        myGallery.contentMode = .scaleAspectFit
        nameLabel.text = houses[selected].name
    }
    
    var houses = [(familyCrest: UIImage(named: "arryn")!, name: "House of Arryn - As High As Honor"),
                  (familyCrest: UIImage(named: "baratheon")!, name: "House Baratheon of Drangonstone"),
                  (familyCrest: UIImage(named: "lannister")!, name: "House Lannister – Hear Me Roar"),
                  (familyCrest: UIImage(named: "stark")!, name: "House of Stark – “Winter is Coming”"),
                  (familyCrest: UIImage(named: "targaryen")!, name: "House Targaryen – Fire and Blood"),
                  (familyCrest: UIImage(named: "tyrell")!, name: "House Tyrell – Growing Strong")]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        myGallery.image = houses[selected].familyCrest
        myGallery.contentMode = .scaleAspectFit
        nameLabel.text = houses[selected].name
    }
}

struct House {
    let familyCrest: UIImage
    let name: String
}
