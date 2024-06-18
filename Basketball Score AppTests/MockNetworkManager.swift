//
//  MockNetworkManager.swift
//  Basketball Score AppTests
//
//  Created by Neenu on 17/06/24.
//

import Foundation
import Alamofire
import XCTest
@testable import Basketball_Score_App

class MockNetworkManager: NetworkManagerProtocol {
    var responseData: Data?
    var responseError: Error?
    
    func request<T: Decodable>(url: String, completion: @escaping (Result<T, Error>) -> Void) {
        if let error = responseError {
            print("MockNetworkManager: Returning error")
            completion(.failure(error))
        } else if let data = responseData {
            do {
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                print("MockNetworkManager: Returning success with data")
                completion(.success(decodedData))
            } catch {
                print("MockNetworkManager: Decoding error")
                completion(.failure(error))
            }
        }
    }
}


