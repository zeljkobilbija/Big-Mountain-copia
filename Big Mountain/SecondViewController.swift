//
//  SecondViewController.swift
//  Big Mountain
//
//  Created by Zeljko Bilbija on 08/10/17.
//  Copyright © 2017 Zeljko Bilbija. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var klik = 0
    @IBAction func mojButonKliknut(_ sender: MojButton) {
        print("Haloo")

        
        if klik == 0{
            self.mojGradientView.FirstColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            self.mojGradientView.SecondColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
            self.mojaSlika.contentMode = .scaleAspectFill
            klik = 1
        }else{
            self.mojGradientView.FirstColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            self.mojGradientView.SecondColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            self.mojaSlika.contentMode = .scaleAspectFit
            klik = 0
        }
        
    }
    
    @IBOutlet weak var mojaSlika: MojImage!
    
    @IBOutlet var mojGradientView: GradientView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
