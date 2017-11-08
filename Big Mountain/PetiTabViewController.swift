//
//  PetiTabViewController.swift
//  Big Mountain
//
//  Created by Zeljko Bilbija on 13/10/17.
//  Copyright © 2017 Zeljko Bilbija. All rights reserved.
//

import UIKit

class PetiTabViewController: UIViewController {
    
    @IBOutlet weak var spisakKojiNePostoji: UILabel!
    @IBOutlet weak var menuView: UIView!
    
    @IBOutlet weak var lidingConstraint: NSLayoutConstraint!
    var menuShoving = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // view.backgroundColor = UIColor(patternImage: UIImage(named: "bg")!)
//        let rect = CGRect(x: 100, y: 210, width: 100, height: 100)
//        let myView = UIView(frame: rect)
//        myView.backgroundColor = UIColor.cyan
//        view.addSubview(myView)

        // Do any additional setup after loading the view.
        
        menuView.layer.shadowOpacity = 1
        menuView.layer.shadowRadius = 6
       
        
        
        
        
    }

    @IBAction func showMenu(_ sender: UIBarButtonItem) {
        if (menuShoving) {
            lidingConstraint.constant = -160
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }else{
            lidingConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
       menuShoving = !menuShoving
    }

    @IBAction func klik(_ sender: MojButton) {
        
    }
}
