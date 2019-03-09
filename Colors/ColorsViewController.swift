//
//  ColorsViewController.swift
//  Colors
//
//  Created by Lauren on 2019-03-08.
//  Copyright © 2019 Lauren Cochran. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        let abbr = colors[indexPath.row]
        cell.textLabel?.text = colors[indexPath.row]
        cell.backgroundColor = UIColor.init(named: abbr)
        return cell
    }
    

    

}
