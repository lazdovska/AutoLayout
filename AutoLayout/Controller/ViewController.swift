//
//  ViewController.swift
//  AutoLayout
//
//  Created by kristine.lazdovska on 23/07/2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var styleOutletsCollection: [UIButton]!
    @IBOutlet weak var buttonDOutlet: UIButton!
    @IBOutlet weak var buttonEOutlet: UIButton!
    @IBOutlet weak var buttonBOutlet: UIButton!
    @IBOutlet weak var buttonCOutlet: UIButton!
    var isOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        styleOutletsCollection.forEach { button in
            button.layer.cornerRadius = 10
            button.layer.borderColor = UIColor.blue.cgColor
            button.layer.borderWidth = 2
        }
    }
        
    @IBAction func refreshItemTapped(_ sender: Any) {
        navigationItem.title = "Auto Layout"
        self.buttonDOutlet.isHidden = false
        self.buttonBOutlet.setTitle("Button B", for: .normal)
        self.buttonBOutlet.setTitleColor(UIColor.blue, for: .normal)
        self.isOn = false
        self.view.backgroundColor = .white
        self.buttonEOutlet.setTitle("Button E", for: .normal)
        self.buttonEOutlet.setImage(nil, for: .normal)
        self.buttonDOutlet.setImage(nil, for: .normal)
        self.buttonDOutlet.setTitle("Button D", for: .normal)
        
    }
    
    @IBAction func buttonATapped(_ sender: Any) {
        navigationItem.title = "Button A"
        self.buttonDOutlet.isHidden = true
        self.buttonEOutlet.setImage(UIImage(systemName: "trash"), for: .normal)
    }
    
    @IBAction func buttonBTapped(_ sender: Any) {
        self.buttonBOutlet.setTitle("Second Button", for: .normal)
        self.buttonBOutlet.setTitleColor(UIColor.orange, for: .normal)
    }
    
    @IBAction func buttonCTapped(_ sender: Any) {
            self.isOn = true
            self.view.backgroundColor = .systemTeal
         }
    
    @IBAction func buttonETapped(_ sender: Any) {
        self.buttonEOutlet.setTitle("E", for: .normal)
        self.buttonEOutlet.setImage(UIImage(systemName: "trash.fill"), for: .normal)
        self.buttonDOutlet.isHidden = false
        
    }
    @IBAction func buttonDTapped(_ sender: Any) {
        self.buttonDOutlet.setImage(UIImage(systemName: "xmark.square"), for: .normal)
        self.buttonEOutlet.setTitle("Done :)", for: .normal)
        self.buttonDOutlet.setTitle(nil, for: .normal)
    }
}

    


