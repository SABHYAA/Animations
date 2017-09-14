//
//  Bahamalogin.swift
//  BahamaLoginForm
//
//  Created by appinventiv on 13/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit

class Bahamalogin: UIViewController {
    // -----------outlets-----------
    @IBOutlet weak var bahamaLabel: UILabel!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var logininButton: UIButton!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func logininButton(_ sender: UIButton) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        logininButton.layer.cornerRadius = 20.0
        self.username.delegate = self
        self.password.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        self.bahamaLabel.center.x -= UIScreen.main.bounds.width
        self.username.center.x -= UIScreen.main.bounds.width
        self.password.center.x -= UIScreen.main.bounds.width
    }
   override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(true)
       UIView.animate(withDuration: 3, delay: 0, options: .allowAnimatedContent, animations: {
          self.bahamaLabel.center.x += UIScreen.main.bounds.width
     }, completion: nil)
    UIView.animate(withDuration: 3, delay: 0, options: .allowAnimatedContent, animations: {self.username.center.x += UIScreen.main.bounds.width}, completion: nil)
    UIView.animate(withDuration: 3, delay: 0, options: .allowAnimatedContent, animations: {self.password.center.x += UIScreen.main.bounds.width}, completion: nil)
  }
}
//---------------UITextFieldDelegate-----------------
extension Bahamalogin: UITextFieldDelegate {

    
}
