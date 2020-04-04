//
//  SummaryViewController.swift
//  COVID19
//
//  Created by Paul Pan on 20/4/3.
//  Copyright © 2020 Paul Pan. All rights reserved.
//

import UIKit
import YogaKit

class OverviewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.topItem?.title = "COVID-19 Overview"
        let covidImage = UIImage(named: "COVID-19")
        let covidCover = UIImageView(image: covidImage)
        covidCover.configureLayout{(layout) in
            layout.isEnabled = true
            layout.width = YGValue(self.view.bounds.size.width)
            layout.height = YGValue(self.view.bounds.size.height / 2.5)
        }
        covidCover.yoga.applyLayout(preservingOrigin: true)
        covidCover.contentMode = .scaleAspectFill
        view.addSubview(covidCover)
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
