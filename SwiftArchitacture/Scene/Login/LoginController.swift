//
//  LoginViewController.swift
//  SwiftArchitacture
//
//  Created by Muhammet Akgöz on 4.02.2025.
//

import Foundation
import UIKit


class LoginViewController: UIViewController {
    var viewModel: LoginViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("acildi")
        viewModel = LoginViewModel()
        viewModel.login()
    }


    fileprivate func login() {


    }
}
