//
//  PopUpViewController.swift
//  Big Mountain
//
//  Created by Zeljko Bilbija on 08/10/17.
//  Copyright © 2017 Zeljko Bilbija. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var kalendarPicker: UIPickerView!

    //***********************
    
    let spisakKalendara = [NSLocalizedString("Buddhist", comment: "Buddhist"), NSLocalizedString("Chinese", comment: "Chinese"), NSLocalizedString("Coptic", comment: "Coptic"), NSLocalizedString("Ethiopic Amete Alem", comment: "Ethiopic Amete Alem"), NSLocalizedString("Ethiopic Amete Mihret", comment: "Ethiopic Amete Mihret"), NSLocalizedString("Gregorian", comment: "Gregorian"), NSLocalizedString("Hebrew", comment: "Hebrew"), NSLocalizedString("Indian", comment: "Indian"), NSLocalizedString("Islamic", comment: "Islamic"), NSLocalizedString("Islamic Civil", comment: "Islamic Civil"), NSLocalizedString("Islamic Tabular", comment: "Islamic Tabular"), NSLocalizedString("Islamic Umm AlQura", comment: "Islamic Umm AlQura"), NSLocalizedString("Japanese", comment: "Japanese"), NSLocalizedString("Persian", comment: "Persian"), NSLocalizedString("Republik Of China", comment: "Republik Of China")]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        
        
        return spisakKalendara[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return spisakKalendara.count
    }
    //************************************
    
    @IBAction func dismissButton(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
