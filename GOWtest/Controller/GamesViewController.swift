//
//  GamesViewController.swift
//  GOWtest
//
//  Created by User on 08/03/24.
//

import UIKit

class GamesViewController: UIViewController {
    
    let gamePosters = Array(0...7)
    

    @IBOutlet weak var gamePosterImage: UIImageView!
    
    @IBOutlet weak var gamePosterPageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gamePosterPageControl.numberOfPages = gamePosters.count
        gamePosterImage.image = UIImage(named:String(gamePosters.first!))
    }
    
    
    @IBAction func leftSwipeDone(_ sender: Any) {

        if gamePosterPageControl.currentPage == gamePosters.count-1  {
                    gamePosterPageControl.currentPage = 0
                    gamePosterImage.image = UIImage(named: String(gamePosters[gamePosterPageControl.currentPage]))
                }
                else{
                    gamePosterPageControl.currentPage = gamePosterPageControl.currentPage + 1
                    gamePosterImage.image = UIImage(named: String(gamePosters[gamePosterPageControl.currentPage]))
                }
        
        gamePosterPageControl.setIndicatorImage(UIImage(named:  "gow_logo"), forPage: gamePosterPageControl.currentPage)
        
    }
    
    
    @IBAction func rightSwipeDone(_ sender: Any) {
        if gamePosterPageControl.currentPage == 0  {
                    gamePosterPageControl.currentPage = gamePosters.count-1
                    gamePosterImage.image = UIImage(named: String(gamePosters[gamePosterPageControl.currentPage]))
                }
                else{
                    gamePosterPageControl.currentPage = gamePosterPageControl.currentPage - 1
                    gamePosterImage.image = UIImage(named: String(gamePosters[gamePosterPageControl.currentPage]))
                }
        
        gamePosterPageControl.setIndicatorImage(UIImage(named:  "gow_logo"), forPage: gamePosterPageControl.currentPage)
    }
    
    
    
}
