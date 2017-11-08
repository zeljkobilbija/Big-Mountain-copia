//
//  SecondNavViewController.swift
//  Big Mountain
//
//  Created by Zeljko Bilbija on 10/10/17.
//  Copyright © 2017 Zeljko Bilbija. All rights reserved.
//

import UIKit

class SecondNavViewController: UIViewController {

    
    @IBOutlet weak var mobilMenu: UIView!
    
    @IBOutlet weak var popUpView: DesignableView!
    
    @IBOutlet weak var crniOkrugliView: DesignableView!
    
    @IBOutlet weak var buttonOutlet: MojButton!
    
    @IBOutlet weak var aOutlet: MojButton!
    
    @IBOutlet weak var bOutlet: MojButton!
    
    @IBOutlet weak var cOutlet: MojButton!
    
    @IBOutlet weak var dOutlet: MojButton!
    
    
    
    @IBAction func closePopUp(_ sender: MojButton) {
        
        
//        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .allowUserInteraction , animations: {
//
//            self.popUpView.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
//
//        }) { (true) in
//            self.popUpView.alpha = 0
//        }
    
        popUpView.alpha = 0
  
    }

    @IBAction func comitAnimaciju(_ sender: MojButton)
    {
        if crniOkrugliView.transform == .identity {
            
            UIView.animate(withDuration: 1, animations: {
                    self.crniOkrugliView.transform = CGAffineTransform(scaleX: 11, y: 11)
                    self.mobilMenu.transform = CGAffineTransform(translationX: 0, y: -66)
                    self.buttonOutlet.transform = CGAffineTransform(rotationAngle: self.radians(180))

            }, completion: { (true) in
                UIView.animate(withDuration: 1, animations: {

                    self.toggleSharedButtone()
                })
            
            })
            
            
        }else{
            
            UIView.animate(withDuration: 1, animations: {
                
                self.crniOkrugliView.transform = .identity
                self.mobilMenu.transform = .identity
                self.buttonOutlet.transform = .identity
                self.toggleSharedButtone()
                
            }, completion: { (true) in
               
            })
        }
        
    }
    
    func toggleSharedButtone() {
        
        let alfa = CGFloat(aOutlet.alpha == 0 ? 1 : 0)
        aOutlet.alpha = alfa
        bOutlet.alpha = alfa
        cOutlet.alpha = alfa
        dOutlet.alpha = alfa
        
    }
    
    
    func radians(_ degrees: CGFloat) -> CGFloat {
        return (degrees * .pi/degrees)
    }
    
    @IBAction func showPopUp(_ sender: MojButton) {
        
        
        popUpView.transform = CGAffineTransform(scaleX: 0.2, y: 2)
       

        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: .allowUserInteraction , animations: {
            
            self.popUpView.transform = .identity
      
        }) { (true) in
            
        }
        
       
        popUpView.alpha = 1
    }
  
//
    override func viewDidLoad() {
        super.viewDidLoad()
        popUpView.alpha = 0
        aOutlet.alpha = 0
        bOutlet.alpha = 0
        cOutlet.alpha = 0
        dOutlet.alpha = 0
        // Do any additional setup after loading the view.
    }

}
