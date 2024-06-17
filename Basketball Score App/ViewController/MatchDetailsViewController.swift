//
//  MatchDetailsViewController.swift
//  Basketball Score App
//
//  Created by Neenu on 15/06/24.
//

import UIKit
import LZViewPager
import AlamofireImage

import UIKit
import Combine
import LZViewPager
import AlamofireImage

protocol MatchViewModelDelegate: AnyObject {
    func didReceiveMatchDetails()
    func didReceiveError(_ error: Error)
}

class MatchDetailsViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var awayTeamName: UILabel!
    @IBOutlet weak var awayTeamImage: UIImageView!
    @IBOutlet weak var homeTeamImage: UIImageView!
    @IBOutlet weak var homeTeamName: UILabel!
    @IBOutlet weak var viewPager: LZViewPager!
    @IBOutlet weak var dateAndTime: UILabel!
    @IBOutlet weak var awayTeamScore: UILabel!
    @IBOutlet weak var homeTeamScore: UILabel!

    // MARK: - Variables
    private var subControllers:[UIViewController] = []
    var matchiD = ""
    var viewModel = MatchDetailsViewModel()
    //var matchDetails: MatchData?
    var statsVC = StatsViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.delegate = self
        viewModel.fetchMatchDetails(matchId: matchiD)
        ActivityIndicatorManager.shared.showActivityIndicator(on: self.view)
        
        SetViewPager()
    }
    
    // MARK: - LZViewPager Handling
    
    func SetViewPager() {
        viewPager.delegate = self
        viewPager.dataSource = self
        viewPager.hostController = self
        
        let overViewVC = UIStoryboard(name: Constants.matchDetails, bundle: nil).instantiateViewController(withIdentifier: Constants.overViewVC) as! OverviewViewController
        statsVC = UIStoryboard(name: Constants.matchDetails, bundle: nil).instantiateViewController(withIdentifier: Constants.statsVC) as! StatsViewController
        let oddsVC = UIStoryboard(name: Constants.matchDetails, bundle: nil).instantiateViewController(withIdentifier: Constants.oddsVC) as! OddsViewController
        let h2hVC = UIStoryboard(name: Constants.matchDetails, bundle: nil).instantiateViewController(withIdentifier: Constants.h2hVC) as! H2hViewController
        
        overViewVC.title = Constants.overview
        statsVC.title = Constants.stats
        oddsVC.title = Constants.odds
        h2hVC.title = Constants.h2h
        
        subControllers = [overViewVC, statsVC, oddsVC, h2hVC]
        viewPager.reload()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    

}

// MARK: - LZViewPager Delegate, LZViewPagerDataSource
extension MatchDetailsViewController: LZViewPagerDelegate, LZViewPagerDataSource {
    
    func numberOfItems() -> Int {
        subControllers.count
    }
    
    func controller(at index: Int) -> UIViewController {
        return subControllers[index]
    }
    
    func button(at index: Int) -> UIButton {
        let button = UIButton()
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.backgroundColor = UIColor.black
        return button
    }
    
    func colorForIndicator(at index: Int) -> UIColor {
        let color = UIColor(hexString: Constants.barColor)
        return color
    }
    
    func didSelectButton(at index: Int) {
        if index == 1 {
            statsVC.matchDetailsResponse = viewModel.matchDetails?.matchDetails
        }
    }
    
    func backgroundColorForHeader() -> UIColor {
        return UIColor.darkGray
    }
}

// MARK: - MatchViewModelDelegate
extension MatchDetailsViewController: MatchViewModelDelegate {
    
    func didReceiveMatchDetails() {
        ActivityIndicatorManager.shared.hideActivityIndicator()
        print(viewModel.matchDetails as Any)
        DispatchQueue.main.async { [self] in
            guard let data = viewModel.matchDetails else { return }
            updateUI(with: data)
        }
    }
    
    private func updateUI(with matchDetails: MatchData) {
        self.title = viewModel.matchDetails?.tournamentDetails.name
        self.homeTeamName.text = viewModel.matchDetails?.homeTeamDetail?.name
        let homeLogo = viewModel.matchDetails?.homeTeamDetail?.logo
        if let homeImageUrl = URL(string: homeLogo ?? "") {
            homeTeamImage.af.setImage(withURL: homeImageUrl)
        }
        let matchTime = viewModel.matchDetails?.matchDetails.matchTime
        self.dateAndTime.text = viewModel.convertTimestampToReadableDate(TimeInterval(matchTime ?? 0))
        let totalHomeScore = viewModel.matchDetails?.matchDetails.homeScores.reduce(0, +)
        self.homeTeamScore.text = "\(totalHomeScore ?? 0)"

        self.awayTeamName.text = viewModel.matchDetails?.awayTeamDetail?.name
        let awayLogo = matchDetails.awayTeamDetail?.logo
        if let awayImageUrl = URL(string: awayLogo ?? "") {
            awayTeamImage.af.setImage(withURL: awayImageUrl)
        }
        let totalAwayScore = viewModel.matchDetails?.matchDetails.awayScores.reduce(0, +)
        self.awayTeamScore.text = "\(totalAwayScore ?? 0)"
    }
    
    
    func didReceiveError(_ error: Error) {
        ActivityIndicatorManager.shared.hideActivityIndicator()
        self.showAlert(title: "Message", message: Constants.networkError)
    }
}
