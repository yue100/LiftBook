//
//  SecondViewController.swift
//  CPSC370_Project
//
//  Created by Jiamo on 10/21/15.
//  Copyright © 2015 Jiamo Yue. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtDate: UITextField!
    @IBOutlet var txtType: UITextField!
    @IBOutlet var txtGroup: UITextField!
    @IBOutlet var txtSets: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAddWorkout_Click(sender: UIButton){
        workMgr.addWorkout(txtDate.text!, workoutType: txtType.text!, muscleGroup: txtGroup.text!, numSets: txtSets.text!);
        self.view.endEditing(true)
        txtDate.text = ""
        txtGroup.text = ""
        txtSets.text = ""
        txtType.text = ""
        self.tabBarController?.selectedIndex = 0;
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //UITextField delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }


}

