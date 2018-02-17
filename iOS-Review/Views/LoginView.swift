//
//  ViewController.swift
//  iOS-Review
//
//  Created by Daniel Bastidas Ramirez on 15/02/2018.
//  Copyright © 2018 Daniel Bastidas. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class LoginView: UIViewController {
    

    //UI OUTLETS
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enabledLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    // Rx vars
    var rxEmailText: Observable<String>!
    var rxPasswordText: Observable<String>!
    var rxLoginButton: Observable<Void>!

    //Dependency Injections
    var loginViewModel:LoginViewModel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Bind Observables from the UI
        self.rxEmailText = emailTextField.rx.text.map{$0 ?? ""}
        self.rxPasswordText = passwordTextField.rx.text.map{$0 ?? ""}
        self.rxLoginButton = loginButton.rx.tap.map{$0}
        
        self.loginViewModel = LoginViewModel(loginView: self)

    }
    
    func bindToButtonActive(enabled:Bool){
        loginButton.isEnabled = enabled
    }
    
    func bindLabelActive(enabled:Bool){
        enabledLabel.text = enabled ? "Enabled" : "Not Enabled"
        enabledLabel.textColor = enabled ? .green : .red
    }

}

