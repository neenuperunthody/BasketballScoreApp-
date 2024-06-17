//
//  UpdateViewController.swift
//  Basketball Score App
//
//  Created by Neenu on 17/06/24.
//

import UIKit

class UpdateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "MatchDetails", bundle: nil)
        let nextViewController = storyboard.instantiateViewController(withIdentifier: "matchDetails_vc") as! MatchDetailsViewController
        //let matchId = viewModel.matchList?.matchList[indexPath.section].match[indexPath.row].id
        nextViewController.matchiD = "k82re8t0xo8erep"
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
