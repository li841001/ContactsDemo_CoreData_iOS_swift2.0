//
//  DetailViewController.swift
//  ContactsDemo
//
//  Created by 李 jia on 15/9/17.
//  Copyright © 2015年 l+. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var headLbName: UILabel!
    @IBOutlet var headLbClass: UILabel!
    @IBOutlet weak var detailTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.detailTableView.delegate = self
//        self.detailTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 4
//    }
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell1 = tableView.dequeueReusableCellWithIdentifier("teleCell")
//        let cell2 = tableView.dequeueReusableCellWithIdentifier("qqCell")
//        let cell3 = tableView.dequeueReusableCellWithIdentifier("emailCell")
//        let cell4 = tableView.dequeueReusableCellWithIdentifier("otherCell")
//        switch indexPath.row {
//        case 0:
//            return cell1!
//        case 1:
//            return cell2!
//        case 2:
//            return cell3!
//        case 3:
//            return cell4!
//        default:
//            return cell1!
//        }
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


