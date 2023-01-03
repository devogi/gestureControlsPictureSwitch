//
//  ViewController.swift
//  gestureControls
//
//  Created by oğuzhan salkım on 3.01.2023.
//

import UIKit

class ViewController: UIViewController {
    var firstPic = false

    @IBOutlet weak var subLabel: UILabel!
    @IBOutlet weak var fPic: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fPic.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(switchPic))
        fPic.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func switchPic() {
        if firstPic == false {
            fPic.image = UIImage(named: "1")
            subLabel.text = "first pic"
            firstPic = true
        } else {
            fPic.image = UIImage(named: "2")
            subLabel.text = "second pic"
            firstPic = false
        }
    }

}

