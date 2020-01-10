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
        cell.textLabel?.font = UIFont(name:"Menlo", size:22)
        cell.textLabel?.textAlignment = .center
    
        //cell.appearance().textLabel?.textColor = UIColor.whiteColor()
        //like to change when the button is pressed change the background color each color
        //https://stackoverflow.com/questions/37518214/how-to-change-the-color-of-text-in-a-tableview-swift
       
        print(cell.selectedBackgroundView)
   //     cell.selectedBackgroundView?.backgroundColor = .blue
        
       let backgroundView = UIView()
     //  backgroundView.backgroundColor = .red
        cell.selectedBackgroundView = backgroundView
    
        switch indexPath.row {
        case 0:
            backgroundView.backgroundColor = .systemBlue
        case 1:
            backgroundView.backgroundColor = .systemGreen
        case 2:
            backgroundView.backgroundColor = .systemRed
        case 3:
            backgroundView.backgroundColor = .systemYellow
        case 4:
            backgroundView.backgroundColor = .systemPurple
        case 5:
            backgroundView.backgroundColor = .brown
        case 6:
            backgroundView.backgroundColor = .black
        default:
            backgroundView.backgroundColor = .systemGray
        }
        
        return cell
    }
    
    @IBSegueAction func showColorTestResult(_ coder: NSCoder) -> ResultViewController? {
        return ResultViewController(coder: coder)
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

