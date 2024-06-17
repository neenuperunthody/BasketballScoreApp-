//
//  TeamDetailsTableViewCell.swift
//  Basketball Score App
//
//  Created by Neenu on 16/06/24.
//

import UIKit
import AlamofireImage

class TeamDetailsTableViewCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var homeTeamScore5: UILabel!
    @IBOutlet weak var homeTeamScore4: UILabel!
    @IBOutlet weak var homeTeamScore3: UILabel!
    @IBOutlet weak var homeTeamScore2: UILabel!
    @IBOutlet weak var homeTeamScore1: UILabel!
    @IBOutlet weak var homeTeamName: UILabel!
    @IBOutlet weak var homeTeamImage: UIImageView!
    @IBOutlet weak var homeTeamScoreView: UIView!
    
    @IBOutlet weak var awayTeamScore5: UILabel!
    @IBOutlet weak var awayTeamScore4: UILabel!
    @IBOutlet weak var awayTeamScore3: UILabel!
    @IBOutlet weak var awayTeamScore2: UILabel!
    @IBOutlet weak var awayTeamScoreView: UIView!
    @IBOutlet weak var awayTeamScore1: UILabel!
    @IBOutlet weak var awayTeamNameLabel: UILabel!
    @IBOutlet weak var awayTeamImage: UIImageView!
    override func awakeFromNib() {
    
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setHomeTeamName(_ name: String) {
        self.homeTeamName.text = name
    }
    
    func setHomeTeamImage(_ image: String) {
        guard let Url = URL(string: image) else { return }
        self.homeTeamImage.af.setImage(withURL: Url)
    }
    
    func setHomeTeamScore(score1: Int, score2: Int, score3: Int, score4: Int, score5: Int ) {
        self.homeTeamScore1.text = "\(score1)"
        self.homeTeamScore2.text = "\(score2)"
        self.homeTeamScore3.text = "\(score3)"
        self.homeTeamScore4.text = "\(score4)"
        self.homeTeamScore5.text = "\(score5)"
    }
    
    func setAwayTeamName(_ name: String) {
        self.awayTeamNameLabel.text = name
    }
    
    func setAwayTeamImage(_ image: String) {
        guard let Url = URL(string: image) else { return }
        self.awayTeamImage.af.setImage(withURL: Url)
    }
    
    func setAwayTeamScore(score1: Int, score2: Int, score3: Int, score4: Int, score5: Int ) {
        self.awayTeamScore1.text = "\(score1)"
        self.awayTeamScore2.text = "\(score2)"
        self.awayTeamScore3.text = "\(score3)"
        self.awayTeamScore4.text = "\(score4)"
        self.awayTeamScore5.text = "\(score5)"
    }
    
    func setScoreView(homeScore: Int, awayScore: Int) {
        if homeScore == awayScore {
            homeTeamScoreView.backgroundColor = UIColor(hexString: Constants.darkGreen)
            homeTeamScore1.textColor = UIColor(hexString: Constants.lightGreen)
            
            awayTeamScoreView.backgroundColor = UIColor(hexString: Constants.darkGreen)
            awayTeamScore1.textColor = UIColor(hexString: Constants.lightGreen)
        } else if homeScore > awayScore {
            homeTeamScoreView.backgroundColor = UIColor(hexString: Constants.darkGreen)
            homeTeamScore1.textColor = UIColor(hexString: Constants.lightGreen)
            
            awayTeamScoreView.backgroundColor = UIColor(hexString: Constants.darkRed)
            awayTeamScore1.textColor = UIColor(hexString: Constants.lightRed)
        } else {
            homeTeamScoreView.backgroundColor = UIColor(hexString: Constants.darkRed)
            homeTeamScore1.textColor = UIColor(hexString: Constants.lightRed)
            
            awayTeamScoreView.backgroundColor = UIColor(hexString: Constants.darkGreen)
            awayTeamScore1.textColor = UIColor(hexString: Constants.lightGreen)
        }
    }
    
   
}
