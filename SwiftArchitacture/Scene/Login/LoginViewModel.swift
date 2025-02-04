//
//  LoginViewModel.swift
//  SwiftArchitacture
//
//  Created by Muhammet Akgöz on 4.02.2025.
//

import Foundation


class LoginViewModel {

    let service: LoginService

    init() {
        service = LoginService()
    }

    func login() {
        service.getPost { response, error in
            error
            response
        }
    }
}
