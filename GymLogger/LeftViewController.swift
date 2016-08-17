//
// Created by Admin on 15.08.16.
// Copyright (c) 2016 SportSolution. All rights reserved.
//

import UIKit

class LeftViewController: UITableViewController {

    var menus = ["Metrics", "Settings"]

    enum LeftMenu: Int {
        case Metrics = 0
        case Settings
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MenuTableViewCell", forIndexPath: indexPath) as! MenuTableViewCell
        cell.menuItemTitle.text = menus[indexPath.row]
        return cell
    }

}
