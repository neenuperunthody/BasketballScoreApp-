//
//  MatchListViewController.swift
//  Basketball Score App
//
//  Created by Neenu on 15/06/24.
//

import UIKit
import AlamofireImage

protocol MatchListDelegate: AnyObject {
    func didReceiveMatchDetails()
    func didReceiveError(_ error: Error)
}


class MatchListViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var tableViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var viewModel = MatchListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = Constants.matchListTitle
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        viewModel.delegate = self
        viewModel.fetchMatchListData()
        ActivityIndicatorManager.shared.showActivityIndicator(on: self.view)
        
        setTableView()
        
       
    }
    
    func setTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.register(UINib(nibName: Constants.teamDetailsCell, bundle: nil), forCellReuseIdentifier: Constants.teamDetailsCell)
        tableView.register(UINib(nibName: Constants.tournamentCell, bundle: nil), forCellReuseIdentifier: Constants.tournamentCell)
    }
    
    // MARK: - UITableView Height Constraint
    func updateTableViewHeight() {
        tableView.layoutIfNeeded()
        tableViewHeightConstraint.constant = tableView.contentSize.height
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension MatchListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.matchList?.matchList.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.matchList?.matchList[section].match.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.teamDetailsCell, for: indexPath) as! TeamDetailsTableViewCell
        
        let match = viewModel.matchList?.matchList[indexPath.section].match[indexPath.row]
        let homeTeamName = match?.details.homeTeamDetail?.name
        let homeTeamLogo = match?.details.homeTeamDetail?.logo
        let homeScore: [Int] = match?.details.matchDetails.homeScores ?? []
        let awayTeamName = match?.details.awayTeamDetail?.name
        let awayTeamLogo = match?.details.awayTeamDetail?.logo
        let awayScore: [Int]  = match?.details.matchDetails.awayScores ?? []
        
        cell.setHomeTeamName(homeTeamName ?? Constants.noTeamName)
        cell.setHomeTeamScore(score1: homeScore[0], score2:  homeScore[1], score3:  homeScore[2], score4:  homeScore[3], score5:  homeScore[4])
        cell.setHomeTeamImage(homeTeamLogo ?? "")
        cell.setAwayTeamName(awayTeamName ?? Constants.noTeamName)
        cell.setAwayTeamScore(score1: awayScore[0], score2:  awayScore[1], score3:  awayScore[2], score4:  awayScore[3], score5:  awayScore[4])
        cell.setAwayTeamImage(awayTeamLogo ?? "")
        cell.setScoreView(homeScore: homeScore[0], awayScore: awayScore[0])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: tableView.frame.size.width, height: 50.0))
        let headerCell = tableView.dequeueReusableCell(withIdentifier: Constants.tournamentCell) as! TournamentNameTableViewCell
        view.backgroundColor = UIColor.black
        
        let tournamentName = viewModel.matchList?.matchList[section].tournamentName
        headerCell.setTournamentName(tournamentName ?? "")
        view.addSubview(headerCell)
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: Constants.matchDetails, bundle: nil)
        let nextViewController = storyboard.instantiateViewController(withIdentifier: Constants.matchDetailsVC) as! MatchDetailsViewController
        let matchId = viewModel.matchList?.matchList[indexPath.section].match[indexPath.row].id
        nextViewController.matchiD = matchId ?? ""
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
}

// MARK: - MatchListDelegate Handling
extension MatchListViewController: MatchListDelegate {
    
    func didReceiveMatchDetails() {
        ActivityIndicatorManager.shared.hideActivityIndicator()
        DispatchQueue.main.async {
            self.tableView.reloadData()
            self.updateTableViewHeight()
            let matchCount = self.viewModel.matchList?.matchList.count
            if matchCount == 0 {
                self.showAlert(title: "Message", message: Constants.dataError)
            }
        }
    }
    
    func didReceiveError(_ error: Error) {
        ActivityIndicatorManager.shared.hideActivityIndicator()
        self.showAlert(title: "Message", message: Constants.networkError)
    }
}


