//
//  RegistViewController.swift
//  ContactsDemo
//
//  Created by 李 jia on 15/9/17.
//  Copyright © 2015年 l+. All rights reserved.
//

import UIKit

class RegistViewController: UIViewController {

    @IBOutlet var inAccountTxtField: UITextField!
    @IBOutlet var pswTxtField: UITextField!
    @IBOutlet var resurePswTxtField: UITextField!
    @IBAction func regBtn(sender: UIButton) {
    }
    @IBAction func cancleBtn(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    @IBOutlet var cancleBtnView: UIButton!
    @IBOutlet var rgsBtnView: UIButton!
       override func viewDidLoad() {
        super.viewDidLoad()
        self.cancleBtnView.layer.cornerRadius = 30.0
        self.rgsBtnView.layer.cornerRadius = 20.0
        //self.cancleBtnView.clipsToBounds = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
