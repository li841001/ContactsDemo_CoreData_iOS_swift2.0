//
//  LoginViewController.swift
//  ContactsDemo
//
//  Created by 李 jia on 15/9/17.
//  Copyright © 2015年 l+. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var pswTxtField: UITextField!
    @IBOutlet var userTxtField: UITextField!
    @IBOutlet var logBtnView: UIButton!
    @IBOutlet var rgsBtnView: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true
        self.rgsBtnView.layer.cornerRadius = 10
        self.logBtnView.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func rgsBtnClick(sender: UIButton) {
    }
    @IBAction func logBtnClick(sender: UIButton) {
    }
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "segueRegist"{
//            
//        }
//    }
//    
//    override func performSegueWithIdentifier(identifier: String, sender: AnyObject?) {
//        <#code#>
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
