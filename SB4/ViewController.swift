//
//  ViewController.swift
//  SB4
//
//  Created by andrew on 9.04.22.
//

import UIKit

class ViewController: UIViewController {

      @IBOutlet weak var loginTF: UITextField!
      @IBOutlet weak var passTF: UITextField!
      @IBOutlet weak var mainTF: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTF.isHidden = true
    }
    
    @IBAction func button(_ sender: UIButton) {
        performSegue(withIdentifier: "secondScreen", sender: nil)
    }
    
    @IBAction func unwindSegueToMainScreen(segue:UIStoryboardSegue) {
        guard segue.identifier == "dom" else {return }
        guard let svc = segue.source as? SecondViewController else {return}
        mainTF.isHidden = false 
        self.mainTF.text = svc.nameLabel.text
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else {return}
        dvc.login = loginTF.text
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

