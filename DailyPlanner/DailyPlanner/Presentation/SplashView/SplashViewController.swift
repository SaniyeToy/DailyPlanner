//
//  ViewController.swift
//  DailyPlanner
//
//  Created by MacOS on 9.02.2022.
//

import UIKit
import SwiftGifOrigin


class SplashViewController: UIViewController {

    @IBOutlet weak var splashImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        splashImageView.loadGif(asset: "splash")
        splashImageView.translatesAutoresizingMaskIntoConstraints = false
        splashImageView.contentMode = .scaleAspectFit
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
            let storyBoard = UIStoryboard(name: "PlanList", bundle: nil)
            let destVC: PlanListViewController = storyBoard.instantiateViewController(identifier: "PlanList")
            destVC.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(destVC, animated: true)
        
    }

}

}
