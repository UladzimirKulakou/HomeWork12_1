//
//  FourthVC.swift
//  HomeWork12_2
//
//  Created by Владимир  on 6/26/21.
//  Copyright © 2021 Uladzimir Kulakou. All rights reserved.
//

import UIKit

class FourthVC: UIViewController {
    
    @IBOutlet weak var testLabel: UILabel!
     @IBOutlet weak var testButton: UIButton!

     var nameForXib = ""
    var nameForTex: FirstVC?
    

     override func viewDidLoad() {
         super.viewDidLoad()
         testLabel.text = nameForXib
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
        nameForTex?.testLabel.text = "From Link"
        
        print("send")
        navigationController?.popToRootViewController(animated: true)
     }

     deinit {
         print("FourthhVC deinited")
     }
}
