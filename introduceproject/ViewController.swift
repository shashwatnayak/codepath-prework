//
//  ViewController.swift
//  introduceproject
//
//  Created by Shashwat Nayak on 12/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstnametextfield: UITextField!
    @IBOutlet weak var lastnametextfield: UITextField!
    @IBOutlet weak var schoolnametextfield: UITextField!
    
    @IBOutlet weak var morepetswitch: UILabel!
    @IBOutlet weak var noofpetlabel: UILabel!
    
    @IBOutlet weak var morepetsswitch: UISwitch!
    @IBOutlet weak var petstepper: UIStepper!
    @IBOutlet weak var yearsegmentfield: UISegmentedControl!
    
    @IBAction func stepperchange(_ sender: UIStepper) {
        noofpetlabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func Introduceyourself(_ sender: UIButton) {
        
        let year = yearsegmentfield.titleForSegment(at: yearsegmentfield.selectedSegmentIndex)
                
              
                let introduction = "My name is \(firstnametextfield.text!) \(lastnametextfield.text!) and I attend \(schoolnametextfield.text!). I am currently in my \(year!) year and I own \(noofpetlabel.text!) dogs. It is \(morepetsswitch.isOn) that I want more pets."
                
                
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
             
                alertController.addAction(action)
                
                present(alertController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

