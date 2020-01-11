//
//  result.swift
//  ColorTest
//
//  Created by Kim Yeon Jeong on 2020/1/9.
//  Copyright © 2020 Kim Yeon Jeong. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBOutlet weak var colorExplanation: UITextView!

    @IBOutlet weak var colorImageView: UIImageView!
    
    var chosenColor: KimColor!
    
    override func viewDidLoad() {
        colorLabel.text = "\(chosenColor.getName())"
      //  print("colorLabel.text: \(colorLabel.text)")
    }
}


let colorImageView = [0,1,2,3,4,5,6,7,8]

