//
//  dateViewController.swift
//  Days
//
//  Created by shyn on 11/20/23.
//

import Foundation
import UIKit

class dateModalViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    var date: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myLabel.text = date
    }
    
}
