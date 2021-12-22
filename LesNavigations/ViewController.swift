//
//  ViewController.swift
//  LesNavigations
//
//  Created by bilal on 22/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let identifierSegue = "GoThirdAvecSender"
    let identifierSegueWithDetail = "GoThirdWithDetail"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == identifierSegue {
            if let nextControler = segue.destination as? ThirdController {
                if let color = sender as? UIColor {
                    nextControler.view.backgroundColor = color
                }
            }
        }
        
        if segue.identifier == identifierSegueWithDetail {
            if let next = segue.destination as? ThirdController {
                next.text = "on a passer des details"
            }
        }
    }

    @IBAction func btNGoToThird(_ sender: UIButton) {
        performSegue(withIdentifier: identifierSegue, sender: UIColor.systemRed)
    }
    
    
    @IBAction func btnGoWithDetail(_ sender: UIButton) {
        performSegue(withIdentifier: identifierSegueWithDetail, sender: nil)
    }
    
    @IBAction func btnSansStorybord(_ sender: Any) {
        let noStorybord = NoStorybordController()
        present(noStorybord, animated: true, completion: nil)
    }
}

