//
//  NewContactTableViewController.swift
//  ContactsDemo
//
//  Created by 李 jia on 15/9/22.
//  Copyright © 2015年 l+. All rights reserved.
//

import UIKit
import CoreData

class NewContactTableViewController: UITableViewController {

    @IBOutlet var inputNameTF: UITextField!
    @IBOutlet var inputClassTF: UITextField!
    @IBOutlet var inputTeleTF: UITextField!
    @IBOutlet var inputQQTF: UITextField!
    @IBOutlet var inputEmailTF: UITextField!
    @IBOutlet var inputOthTF: UITextField!
//    func getTextfieldInfo()-> NSArray {
//        let inName = inputNameTF.text
//        let inClass = inputClassTF.text
//        var inTele = inputTeleTF.text
//        if inputTeleTF.text == nil{
//            inTele = "nil"
//        }
//        var inQQ = inputQQTF.text
//        if inputQQTF.text == nil{
//            inQQ = "nil"
//        }
//        var inEmail = inputEmailTF.text
//        if inputEmailTF.text == nil {
//            inEmail = "nil"
//        }
//        var inOther = inputOthTF.text
//        if inputOthTF.text == nil{
//            inOther = "nil"
//        }
//        let newContect:NSArray = [inName, inClass, inTele, inQQ, inEmail, inOther]
//        return newContect
//    }
    
    var classmate: [NSManagedObject] = []
    @IBAction func saveBtnClick(sender: UIButton) {
        if inputNameTF.text == nil {
            let nilAlert = UIAlertController(title: "缺少姓名", message: "请输入新增校友的名字", preferredStyle: UIAlertControllerStyle.Alert)
            let cancel = UIAlertAction(title: "返回", style: .Default, handler: { (action:UIAlertAction) -> Void in
                self.inputNameTF.becomeFirstResponder()
            })
            nilAlert.addAction(cancel)
            presentViewController(nilAlert, animated: true, completion:nil)
        }
        if inputClassTF.text == nil{
            let nilAlert = UIAlertController(title: "缺少班级", message: "请输入新增校友的班级", preferredStyle: UIAlertControllerStyle.Alert)
            let cancel = UIAlertAction(title: "返回", style: .Default, handler: { (action:UIAlertAction) -> Void in
                self.inputClassTF.becomeFirstResponder()
            })
            nilAlert.addAction(cancel)
            presentViewController(nilAlert, animated: true, completion:nil)
        }

        let inName = inputNameTF.text
        let inClass = inputClassTF.text
        var inTele = inputTeleTF.text
        if inputTeleTF.text == nil{
            inTele = "nil"
        }
        var inQQ = inputQQTF.text
        if inputQQTF.text == nil{
            inQQ = "nil"
        }
        var inEmail = inputEmailTF.text!
        if inputEmailTF.text == nil {
            inEmail = "nil"
        }
        var inOther = inputOthTF.text
        if inputOthTF.text == nil{
            inOther = "nil"
        }

        saveNewContact(inName!, organization: inClass!, email: inEmail, otherinfo: inOther!, qq: inQQ!, telephone: inTele!)
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
               // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func saveNewContact( name: String, organization: String, email: String, otherinfo: String, qq: String, telephone: String){
        let appDel = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = appDel.managedObjectContext
        let entity = NSEntityDescription.entityForName("Contacts", inManagedObjectContext: context)
        let contact = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: context)
        contact.setValue(name, forKey: "name")
        contact.setValue(organization, forKey: "organization")
        contact.setValue(email, forKey: "email")
        contact.setValue(qq, forKey: "qq")
        contact.setValue(telephone, forKey: "telephone")
        contact.setValue(otherinfo, forKey: "otherinfo")
        var error: NSError?
        do{
            try context.save()
        }catch let error1 as NSError{
            error = error1

            print("Could not save \(error), \(error?.userInfo)")
        }
        classmate.append(contact)
    }
    // MARK: - Table view data source

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
