//
//  ThirdController.swift
//  LesNavigations
//
//  Created by bilal on 22/12/2021.
//

import UIKit

class ThirdController: UIViewController {

    
    @IBOutlet weak var textLbl: UILabel!
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if text != nil {
            textLbl.text = text!
        }
        // Do any additional setup after loading the view.
    }
    


}
