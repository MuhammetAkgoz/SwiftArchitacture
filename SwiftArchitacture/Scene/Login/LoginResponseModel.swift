//
//  LoginResponseModel.swift
//  SwiftArchitacture
//
//  Created by Muhammet Akgöz on 4.02.2025.
//

import Foundation

// MARK: - LoginResponseModelElement
struct LoginResponseModelElement: Codable {
    let userID, id: Int?
    let title, body: String?

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}

typealias LoginResponseModel = [LoginResponseModelElement]
