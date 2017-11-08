//
//  AnimationViewController.swift
//  Big Mountain
//
//  Created by Zeljko Bilbija on 10/10/17.
//  Copyright © 2017 Zeljko Bilbija. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {

    @IBOutlet weak var slika: UIImageView!
    @IBOutlet weak var dobroVece: UILabel!
    
    @IBOutlet weak var button: MojButton!
    
    @IBOutlet weak var lakuNoc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        slika.alpha = 0
        dobroVece.alpha = 0
        button.alpha = 0
        lakuNoc.alpha = 0
        self.title = "Dobro vece"
        // Do any additional setup after loading the view.
         //navigationController?.setNavigationBarHidden(true, animated: false)
    }


    
    override func viewDidAppear(_ animated: Bool) {

        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5, animations: {
            self.slika.alpha = 1
        }) { (true) in
            self.animaijaPrvogLabela()
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        /*
         super.viewDidAppear(animated)
        
         ovo pravi problem, ako se pozove gornja funkcija ne radi nista, ni animacija
         niti sta drugo
         */
       
        
       navigationController?.setNavigationBarHidden(true, animated: false)
    }

    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
    

    func animaijaPrvogLabela() {
        UIView.animate(withDuration: 0.5, animations: {
            self.dobroVece.alpha = 1
        }) { (true) in
            self.animacijaButtona()
        }
    }
    
    func animacijaButtona() {
        
        UIView.animate(withDuration: 0.1, animations: {
            self.button.alpha = 1
        }) { (true) in
            self.animaijaDrugogLabela()
        }
        
    }
    
    func animaijaDrugogLabela() {
        UIView.animate(withDuration: 0.5) {
            self.lakuNoc.alpha = 1
        }
    }

}
