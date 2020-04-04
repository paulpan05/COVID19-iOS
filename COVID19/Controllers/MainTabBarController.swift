//
//  MainTabBarController.swift
//  COVID19
//
//  Created by Paul Pan on 20/4/3.
//  Copyright © 2020 Paul Pan. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let overviewController = OverviewViewController()
        let overviewIcon = UITabBarItem(title: "Overview", image: UIImage(systemName: "house"), tag: 0)
        overviewController.tabBarItem = overviewIcon
        
        let countriesController = CountriesViewController()
        let countriesIcon = UITabBarItem(title: "Countries", image: UIImage(systemName: "globe"), tag: 1)
        countriesController.tabBarItem = countriesIcon
        
        let tabBarList = [overviewController, countriesController]
        viewControllers = tabBarList.map {
            UINavigationController(rootViewController: $0)
        }
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
