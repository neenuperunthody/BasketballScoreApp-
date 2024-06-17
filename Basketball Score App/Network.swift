//
//  Network.swift
//  Basketball Score App
//
//  Created by Neenu on 17/06/24.
//

import Foundation
import Alamofire

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init() {}
    
    func request<T: Decodable>(url: String, completion: @escaping (Result<T, Error>) -> Void) {
        AF.request(url, method: .get).responseDecodable(of: T.self) { response in
            switch response.result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
