//
//  MatchDetailsViewModel.swift
//  Basketball Score App
//
//  Created by Neenu on 15/06/24.
//

import Foundation
import Alamofire

class MatchDetailsViewModel {
    
    weak var delegate: MatchViewModelDelegate?
    
    // MARK: - Fetch API for match details
    func fetchMatchDetails(matchId: String) {
        let url = Constants.constructFullURL(with: matchId)
        print(url)
        
        NetworkManager.shared.request(url: url) { (result: Result<MatchData, Error>) in
            switch result {
            case .success(let matchResponse):
                self.delegate?.didReceiveMatchDetails(matchResponse)
                
            case .failure(let error):
                self.delegate?.didReceiveError(error)
            }
        }
    }
    
    
    // MARK: - Convert timestamp to Date
    func convertTimestampToReadableDate(_ timestamp: TimeInterval) -> String {
        let date = Date(timeIntervalSince1970: timestamp)
        
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")

        dateFormatter.dateFormat = "h:mm a, EEEE, MMM d, yyyy"
        
        let readableDate = dateFormatter.string(from: date)
        
        return readableDate
    }
    
}
