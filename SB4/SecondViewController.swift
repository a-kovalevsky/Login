//
//  SecondViewController.swift
//  SB4
//
//  Created by andrew on 9.04.22.
//

import UIKit

class SecondViewController: UIViewController {
    var login: String?
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.login else {return}
        nameLabel.text = "Hello, \(login)"
    }
	
    @IBAction func backButton(_ sender: UIButton) {
     performSegue(withIdentifier: "dom", sender: nil)
}
	
}
