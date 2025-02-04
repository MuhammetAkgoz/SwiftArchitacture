//
//  NetworkHelper.swift
//  SwiftArchitacture
//
//  Created by Muhammet Akgöz on 4.02.2025.
//

import Foundation
import Alamofire


enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

enum ErrorTypes: String, Error {
    case invalidData = "Invalid Data"
    case invalidURL = "Invalid URL"
    case genericError = "An error happaned"
}

class NetworkHandler {
    static let shared = NetworkHandler()
    
    private init() {
        
    }
    
    var baseURL: String {
        "https://jsonplaceholder.typicode.com"
    }
    
    
    func header() -> HTTPHeaders {
         ["Auth" : "Bearer"]
    }
    
    func saveToken() {
        
    }
}
