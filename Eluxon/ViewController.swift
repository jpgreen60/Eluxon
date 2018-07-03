//
//  ViewController.swift
//  Eluxon
//
//  Created by John Green on -07-032018.
//  Copyright © 2018 John P. Green. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var onOffLbl: UILabel!
    @IBOutlet weak var toggleBtn: UIButton!
    
    var switchStatus: SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func toggleBtnWasPressed(_ sender: UIButton) {
        
        switchStatus.toggle()
        
        if switchStatus == .off {
            
            toggleBtn.setImage(UIImage(named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
            onOffLbl.text = "🌚 OFF 🌚"
            onOffLbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
        } else {
            
            toggleBtn.setImage(UIImage(named: "onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            onOffLbl.text = "🌝 ON 🌝"
            onOffLbl.textColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
 
        }
        
    }
    
}

