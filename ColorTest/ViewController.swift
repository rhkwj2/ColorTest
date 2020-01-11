//
//  ViewController.swift
//  ColorTest
//
//  Created by Kim Yeon Jeong on 2019/12/14.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var chosenColor: KimColor!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! ResultViewController
        resultViewController.chosenColor = chosenColor
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenColor = KimColor(rawValue:indexPath.row)!

        performSegue(withIdentifier: "PushToResultViewController", sender: nil)
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
        
       let backgroundView = UIView()
        backgroundView.backgroundColor = KimColor(rawValue: indexPath.row)!.getUIColor()
        cell.selectedBackgroundView = backgroundView
        return cell
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

