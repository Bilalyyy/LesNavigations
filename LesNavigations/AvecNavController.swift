//
//  AvecNavController.swift
//  LesNavigations
//
//  Created by bilal on 22/12/2021.
//

import UIKit

class AvecNavController: UIViewController {

    let identifierSegueSender = "showSender"
    let identifierWithDetail = "showDetail"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NoNav" {
            if let new = segue.destination as? SimpleController {
                new.showNav = false
            }
        }
        
        if segue.identifier == identifierSegueSender {
            if let new = segue.destination as? ThirdController {
                if let color = sender as? UIColor {
                    new.view.backgroundColor = color
                }
            }
        }
        
        if segue.identifier == identifierWithDetail {
            if let new = segue.destination as? ThirdController {
                new.text = "Coucou j'ai envoyé des details"
            }
        }
    }
    
    
    @IBAction func sansNav(_ sender: Any) {
        performSegue(withIdentifier: "NoNav", sender: nil)
    }
    
    @IBAction func SansStorybord(_ sender: Any) {
        let noStorybord = NoStorybordController()
        self.navigationController?.pushViewController(noStorybord, animated: true)
    }
    @IBAction func avecSender(_ sender: Any) {
        performSegue(withIdentifier: identifierSegueSender, sender: UIColor.systemMint)
    }
    
    @IBAction func avecDetail(_ sender: Any) {
        performSegue(withIdentifier: identifierWithDetail, sender: nil)
    }
}
