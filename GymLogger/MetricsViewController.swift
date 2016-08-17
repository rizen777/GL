//
//  MetricsViewController.swift
//  GymLogger
//
//  Created by Admin on 17.08.16.
//  Copyright © 2016 SportSolution. All rights reserved.
//

import UIKit

class MetricsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var addMetricBtn: UIBarButtonItem!

    @IBOutlet weak var metricTable: UITableView!
    var workoutLogList: [Log] = [Log(weight: "52.2")]

    @IBAction func addMetricClicked(sender: AnyObject) {
        let alert = UIAlertController(title: "Some Title", message: "Enter a text", preferredStyle: .Alert)

        alert.addTextFieldWithConfigurationHandler({
            (textField) -> Void in
            textField.text = "Some default text."
        })

        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: {
            (action) -> Void in
            let textField = alert.textFields![0] as UITextField
            self.workoutLogList.append(Log(weight: textField.text!))
            self.metricTable.reloadData()
        }))

        self.presentViewController(alert, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (workoutLogList.count)
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MetricCell", forIndexPath: indexPath)
        cell.textLabel?.text = workoutLogList[indexPath.row].weight
        return cell
    }
}
