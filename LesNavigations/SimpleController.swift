//
//  SimpleController.swift
//  LesNavigations
//
//  Created by bilal on 22/12/2021.
//

import UIKit

class SimpleController: UIViewController {
    
    var showNav = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = !showNav
    }
    
    @IBAction func btnClose(_ sender: Any) {
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
        } else {
            dismiss(animated: true)
        }
    }
}
