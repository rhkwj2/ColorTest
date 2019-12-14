//
//  ViewController.swift
//  ColorTest
//
//  Created by Kim Yeon Jeong on 2019/12/14.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowData = colorArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
        cell.textLabel?.text = rowData
        //cell.textLabel.font = [UIFont .preferredFontForTextStyle("Menlo")]
        cell.textLabel?.font = UIFont(name:"Menlo", size:22)
        cell.textLabel?.textAlignment = .center
        return cell
    }
    
    @IBSegueAction func showColorTestResult(_ coder: NSCoder) -> UIViewController? {
        return UIViewController(coder: coder)
    }
    
    @IBOutlet weak var myTableView: UITableView!
    let colorArray = ["Blue","Green","Red","Yellow","Violt","Brown","Black","Grey"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    

}

