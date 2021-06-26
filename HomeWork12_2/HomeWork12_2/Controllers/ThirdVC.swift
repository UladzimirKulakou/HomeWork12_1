//
//  ThirdVC.swift
//  HomeWork12_2
//
//  Created by Uladzimir Kulakou on 6/24/21.
//  Copyright © 2021 Uladzimir Kulakou. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testButton: UIButton!

    var nameForThird = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = nameForThird
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func buttonTapped() {
    }

    deinit {
        print("ThirdVC deinited")
    }
}
