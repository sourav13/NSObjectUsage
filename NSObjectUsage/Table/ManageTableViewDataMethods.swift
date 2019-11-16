//
//  ManageTableViewDataMethods.swift
//  NSObjectUsage
//
//  Created by sourav sachdeva on 16/11/19.
//  Copyright © 2019 sourav sachdeva. All rights reserved.
//

import UIKit

class ManageTableViewDataMethods: NSObject,UITableViewDataSource,UITableViewDelegate {
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as! TableViewCell
        cell.backgroundColor = UIColor.red
        return cell
    }
    

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
       
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
        return 3
    }

   
}
