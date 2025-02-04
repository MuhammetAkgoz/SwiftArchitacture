//
//  NetworkManager.swift
//  SwiftArchitacture
//
//  Created by Muhammet Akgöz on 4.02.2025.
//

import Foundation
import Alamofire

class NetworkManager {
    static let shared = NetworkManager()
    private init() { }


    func call<T: Codable>(type: T.Type, url: String, method: HTTPMethod, param: [String: Any]? = nil, completion: @escaping (Result<T, ErrorTypes>) -> Void) {
        let session = URLSession.shared
        if let url = URL(string: url) {
            var request = URLRequest(url: url)
            request.httpMethod = method.rawValue

            let task = session.dataTask(with: request) { data, response, error in
                if let _ = error {
                    completion(.failure(.genericError))
                } else if let data = data {
                    self.handleResponse(data: data) { result in
                        completion(result)
                    }
                } else {
                    completion(.failure(.invalidURL))
                }
            }
            
            task.resume()
        }
    }


    fileprivate func handleResponse<T: Codable>(data: Data, completion: @escaping (Result<T, ErrorTypes>) -> Void) {
        do {

            let result = try JSONDecoder().decode(T.self, from: data)
            completion(.success(result))
        } catch let e {
            completion(.failure(.invalidData))
        }
    }
}
