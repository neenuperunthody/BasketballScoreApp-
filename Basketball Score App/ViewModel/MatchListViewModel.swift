//
//  MatchListViewModel.swift
//  Basketball Score App
//
//  Created by Neenu on 15/06/24.
//

import Foundation
import Alamofire

//class MatchListViewModel {
//    
//    weak var delegate: MatchListDelegate?
//    var matchList: Tournaments?
//    
//    // MARK: - Fetch API for tournament details
//    func fetchMatchListData() {
//        let url = Constants.matchListUrl
//        
//        NetworkManager.shared.request(url: url) { [weak self] (result: Result<Tournaments, Error>) in
//            switch result {
//            case .success(let matchResponse):
//                self?.matchList = matchResponse
//                print(self?.matchList as Any)
//                self?.delegate?.didReceiveMatchDetails()
//                
//            case .failure(let error):
//                self?.delegate?.didReceiveError(error)
//            }
//        }
//    }
//}

//class MatchListViewModel {
//    
//    weak var delegate: MatchListDelegate?
//    var matchList: Tournaments?
//    private let networkManager: NetworkManagerProtocol
//    
//    init(networkManager: NetworkManagerProtocol = NetworkManager.shared) {
//        self.networkManager = networkManager
//    }
//    
//    func fetchMatchListData() {
//        let url = Constants.matchListUrl
//        
//        networkManager.request(url: url) { [weak self] (result: Result<Tournaments, Error>) in
//            switch result {
//            case .success(let matchResponse):
//                self?.matchList = matchResponse
//                self?.delegate?.didReceiveMatchDetails()
//                
//            case .failure(let error):
//                self?.delegate?.didReceiveError(error)
//            }
//        }
//    }
//}

class MatchListViewModel {
    
    weak var delegate: MatchListDelegate?
    var matchList: Tournaments?
    private let networkManager: NetworkManagerProtocol
    
    init(networkManager: NetworkManagerProtocol = NetworkManager.shared) {
        self.networkManager = networkManager
    }
    
    func fetchMatchListData() {
        let url = Constants.matchListUrl
        
        networkManager.request(url: url) { [weak self] (result: Result<Tournaments, Error>) in
            switch result {
            case .success(let matchResponse):
                self?.matchList = matchResponse
                print(self?.matchList as Any)
                self?.delegate?.didReceiveMatchDetails()
                
            case .failure(let error):
                self?.delegate?.didReceiveError(error)
            }
        }
    }
}


