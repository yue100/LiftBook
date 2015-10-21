//
//  FirstViewController.swift
//  CPSC370_Project
//
//  Created by Jiamo on 10/21/15.
//  Copyright © 2015 Jiamo Yue. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tblWorkouts: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        tblWorkouts.reloadData()
    }
    
    
    
    //UITableView Data Source
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return workMgr.workouts.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "test")
        
        cell.textLabel?.text = workMgr.workouts[indexPath.row].date
        cell.detailTextLabel?.text = workMgr.workouts[indexPath.row].workoutType
        
        return cell
        
    }


}

