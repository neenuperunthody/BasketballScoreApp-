//
//  MatchDetailsViewModel.swift
//  Basketball Score App
//
//  Created by Neenu on 15/06/24.
//

import Foundation

class MatchDetailsViewModel {
    
    weak var delegate: MatchViewModelDelegate?
    var matchDetails: MatchData?
    private let networkManager: NetworkManagerProtocol
    
    init(networkManager: NetworkManagerProtocol = NetworkManager.shared) {
        self.networkManager = networkManager
    }
    
    // MARK: - Fetch API for match details
    func fetchMatchDetails(matchId: String) {
        let url = Constants.constructFullURL(with: matchId)
        
        NetworkManager.shared.request(url: url) { [weak self]  (result: Result<MatchData, Error>) in
            switch result {
            case .success(let matchResponse):
                self?.matchDetails = matchResponse
                self?.delegate?.didReceiveMatchDetails()
                
            case .failure(let error):
                self?.delegate?.didReceiveError(error)
            }
        }
    }
    
    
    // MARK: - Convert timestamp to Date
    func convertTimestampToReadableDate(_ timestamp: TimeInterval) -> String {
        let date = Date(timeIntervalSince1970: timestamp)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatter.dateFormat = "h:mm a, EEEE, MMM d, yyyy"
        
        let readableDate = dateFormatter.string(from: date)
        
        return readableDate
    }
}
