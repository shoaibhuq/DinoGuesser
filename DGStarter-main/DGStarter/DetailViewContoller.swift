//
//  DetailViewContoller.swift
//  DGStarter
//
//  Created by Shoaib Huq on 2/20/23.
//

import UIKit

class DetailViewContoller: UIViewController {
    
    var dinosaur: Dinosaur?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var typeBG: UIView! {
        didSet {
            typeBG.layer.cornerRadius = 25
        }
    }
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var eraLabel: UILabel!
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var dietLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let dinosaur = dinosaur {
//            print(dinosaur.name)
//        }
        DispatchQueue.main.async {
            if let dinosaur = self.dinosaur {
                // Configure the dinosaur image and dynamic labels
                self.imageView.image = dinosaur.image
                self.nameLabel.text = dinosaur.name
                self.typeLabel.text = dinosaur.type
                self.weightLabel.text = String(dinosaur.weight) + " KG"
                self.heightLabel.text = String(dinosaur.height) + " M"
                self.dietLabel.text = String(dinosaur.diet)
                self.eraLabel.text = String(dinosaur.era)
                self.regionLabel.text = String(dinosaur.region)
                self.speedLabel.text = String(dinosaur.speed) + " mph"
            }
        }
        
    }
    
    
}
