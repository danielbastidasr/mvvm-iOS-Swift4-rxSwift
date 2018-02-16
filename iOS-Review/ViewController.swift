//
//  ViewController.swift
//  iOS-Review
//
//  Created by Daniel Bastidas Ramirez on 15/02/2018.
//  Copyright © 2018 Daniel Bastidas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //UI OUTLETS
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enabledLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

