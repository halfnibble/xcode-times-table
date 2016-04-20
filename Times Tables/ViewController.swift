//
//  ViewController.swift
//  Times Tables
//
//  Created by Joshua Wedekind on 4/19/16.
//  Copyright © 2016 Halfnibble. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var table: UITableView!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        table.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let multiplier: Int = Int(sliderValue.value)
        
        cell.textLabel!.text = "\(multiplier) x \(indexPath.row) = \(indexPath.row * multiplier)"
        
        cell.preservesSuperviewLayoutMargins = false
        cell.separatorInset = UIEdgeInsetsZero
        cell.layoutMargins = UIEdgeInsetsZero
        
        print("Cell indent: \(cell.separatorInset.left), \(cell.separatorInset.right), \(cell.separatorInset.top), \(cell.separatorInset.bottom)")
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

