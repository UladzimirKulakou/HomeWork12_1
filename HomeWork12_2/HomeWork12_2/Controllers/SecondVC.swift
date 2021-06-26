//
//  SecondVC.swift
//  HomeWork12_2
//
//  Created by Uladzimir Kulakou on 6/24/21.
//  Copyright © 2021 Uladzimir Kulakou. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {


    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testButton: UIButton!

    var name = ""
    var nameFromSecond = "nameFromSecond"

    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = name
        // Do any additional setup after loading the view.
    }


   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

    @IBAction func buttonTapped() {
        performSegue(withIdentifier: "passDataToFirstVC", sender: nameFromSecond)
    }
    deinit {
           print("SecondVC deinited")
       }

}
