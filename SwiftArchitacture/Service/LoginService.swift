//
//  LoginService.swift
//  SwiftArchitacture
//
//  Created by Muhammet Akgöz on 4.02.2025.
//

import Foundation


protocol LoginServiceProtocol {
    func getPost(completion: @escaping (LoginResponseModel?, String?) -> ())
}


class LoginService: LoginServiceProtocol {
    func getPost(completion: @escaping (LoginResponseModel?, String?) -> ()) {
        let url = NetworkHandler.shared.baseURL + "/posts"

        NetworkManager.shared.call(type: LoginResponseModel.self, url: url, method: .get) { result in
            switch result {
            case .success(let response):
                completion(response, nil)
            case .failure(let error):
                completion(nil, error.rawValue)
            }
        }
    }
}
