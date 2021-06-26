//
//  FirstVC.swift
//  HomeWork12_2
//
//  Created by Uladzimir Kulakou on 6/24/21.
//  Copyright © 2021 Uladzimir Kulakou. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {


    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testButton: UIButton!

    let name = "JB"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }



    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "goToSecondVC" else { return }
        guard let destination = segue.destination as? SecondVC else { return }
        guard let name = sender as? String else { return }
        destination.name = name


    }
    @IBAction func unwindToFirstVC(_ unwindSegue: UIStoryboardSegue) {
                guard unwindSegue.identifier == "passDataToFirstVC" else {
                return
            }
            guard let source = unwindSegue.source as? SecondVC else { return }
        testLabel.text = source.nameFromSecond
        }
    

    @IBAction func buttonTapped() {
        performSegue(withIdentifier: "goToSecondVC", sender: name)
    }
    @IBAction func buttonWithoutSegueTapped() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondViewController = storyboard.instantiateViewController(identifier: "ThirdVC") as? ThirdVC else { return }
        secondViewController.nameForThird = "Ivan"
        show(secondViewController, sender: nil)
    }
    @IBAction func sentDateToXib() {
        let vc = FourthVC(nibName: "FourthVC", bundle: nil)
        vc.nameForXib = "to XIB"
        vc.nameForTex = self
    show(vc, sender: nil)
        
    }
    
}
