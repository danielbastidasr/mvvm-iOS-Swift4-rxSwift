//
//  LoginViewModel.swift
//  iOS-Review
//
//  Created by Daniel Bastidas Ramirez on 16/02/2018.
//  Copyright © 2018 Daniel Bastidas. All rights reserved.
//

import Foundation
import RxSwift

class  LoginViewModel{
   
    private var isValid :Observable<Bool>
    private var disposeBag : DisposeBag = DisposeBag()
    
    
    private var loginView: LoginView
    

    init(loginView: LoginView) {

        self.loginView = loginView

        self.isValid = Observable.combineLatest(loginView.rxEmailText,loginView.rxPasswordText){
            email,password in
            return email.count >= 5 && password.count >= 5
        }

        isValid.subscribe(onNext: {
            (isValid) in
            loginView.bindLabelActive(enabled: isValid)
            loginView.bindToButtonActive(enabled: isValid)
        }).disposed(by: disposeBag)
        
        loginView.rxLoginButton.subscribe (onNext: {
            _ in
            
            loginView.performSegue(withIdentifier: SegueListEvents, sender: self.loginView.storyboard)
            
        }).disposed(by: disposeBag)
        
        
    }
    
   
}
