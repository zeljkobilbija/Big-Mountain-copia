//
//  StackViewController.swift
//  Big Mountain
//
//  Created by Zeljko Bilbija on 09/10/17.
//  Copyright © 2017 Zeljko Bilbija. All rights reserved.
//

import UIKit

class StackViewController: UIViewController {
    
    @IBOutlet weak var gradientView: UIImageView!
    
    
    @IBOutlet weak var labelOne: MojLabel!
    

    @IBOutlet weak var labelTwo: MojLabel!
    
    
    @IBOutlet weak var buttonOne: MojButton!
    
    @IBOutlet weak var buttonTwo: MojButton!
    
    @IBOutlet weak var buttonThre: MojButton!
    
    @IBOutlet weak var dugiGradient: GradientView!
    
    
    var colorArray: [(color1: UIColor, color2: UIColor)] = []
    
    var currentColorArrayIndex = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorArray.append((color1:#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)  , color2: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)))
        colorArray.append((color1:#colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)  , color2: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)))
        colorArray.append((color1:#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)  , color2: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
        colorArray.append((color1:#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)  , color2: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)))
        colorArray.append((color1:#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)  , color2: #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)))
        colorArray.append((color1:#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)  , color2: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
        colorArray.append((color1:#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)  , color2: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))

        animateBGColor()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {

        
    }

    func animateBGColor() {
 
         UIView.animate(withDuration: 2, delay: 2, options: [.autoreverse, .curveLinear, .repeat  ], animations: {
            
            let  x = -(self.gradientView.frame.width - self.view.frame.width)
            self.gradientView.transform = CGAffineTransform(translationX: x, y: 0)
            self.labelOne.transform = CGAffineTransform(translationX: 0, y: 253)
            self.labelTwo.transform = CGAffineTransform(translationX: -3400, y: -1400)
            self.buttonOne.transform = CGAffineTransform(translationX: -400, y: 233)
            self.buttonTwo.transform = CGAffineTransform(translationX: 233, y: 233)
            self.buttonThre.transform = CGAffineTransform(translationX: -2345, y: -233)
        }, completion: nil)
 
 
        
        currentColorArrayIndex = currentColorArrayIndex  == (colorArray.count - 1) ? 0 : currentColorArrayIndex + 1
        
        UIView.transition(with: dugiGradient, duration: 2, options: [ .transitionCrossDissolve ], animations: {
            
            self.dugiGradient.FirstColor = self.colorArray[self.currentColorArrayIndex].color1
            self.dugiGradient.SecondColor = self.colorArray[self.currentColorArrayIndex].color2
            
            
        }, completion: {
            (success) in
            self.animateBGColor()
        })
        
    
        
        
    }

}
