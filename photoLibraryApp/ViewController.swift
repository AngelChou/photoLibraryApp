//
//  ViewController.swift
//  photoLibraryApp
//
//  Created by Shun-Ching, Chou on 2019/3/24.
//  Copyright © 2019 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var petImageView: UIImageView!
    @IBOutlet weak var typeSegmentedControl: UISegmentedControl!
    
    let dogs = ["mi","bei","john"]
    let cats = ["shima", "shiba", "nunu"]
    var petIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        typeSegmentedControl.selectedSegmentIndex = 0
        nameLabel.text = dogs[0]
        
    }
    func changeImage() {
        if typeSegmentedControl.selectedSegmentIndex == 0 {
            if petIndex == dogs.count {
                petIndex = 0
            }
            petImageView.image = UIImage(named: dogs[petIndex])
            nameLabel.text = dogs[petIndex]
        } else {
            if petIndex == cats.count {
                petIndex = 0
            }

            petImageView.image = UIImage(named: cats[petIndex])
            nameLabel.text = cats[petIndex]
        }
    }

    @IBAction func segmentedChanged(_ sender: UISegmentedControl) {
        petIndex = 0
        changeImage()
    }
    @IBAction func NextBtnClicked(_ sender: Any) {
        petIndex += 1
        changeImage()
    }
}

