//
//  ViewController.swift
//  watchly
//
//  Created by Ahmed Madhoun on 30/06/2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        let upcomingVC = UINavigationController(rootViewController: UpcomingViewController())
        let searchVC = UINavigationController(rootViewController: SearchViewController())
        let downloadsVC = UINavigationController(rootViewController: DownloadsViewController())
        
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        upcomingVC.tabBarItem.image = UIImage(systemName: "play.circle")
        searchVC.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        downloadsVC.tabBarItem.image = UIImage(systemName: "arrow.down.to.line")
        
        homeVC.title = "Home"
        upcomingVC.title = "Coming"
        searchVC.title = "Search"
        downloadsVC.title = "Downloads"
        
        tabBar.tintColor = .label
        
        setViewControllers([homeVC,upcomingVC, searchVC, downloadsVC], animated: true)
        
    }
}

