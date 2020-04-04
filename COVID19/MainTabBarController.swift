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
        let summaryController = SummaryViewController()
        let summaryIcon = UITabBarItem(title: "Summary", image: UIImage(systemName: "house"), tag: 0)
        summaryController.tabBarItem = summaryIcon
        
        let countriesController = CountriesViewController()
        let countriesIcon = UITabBarItem(title: "Countries", image: UIImage(systemName: "globe"), tag: 1)
        countriesController.tabBarItem = countriesIcon
        
        let tabBarList = [summaryController, countriesController]
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
