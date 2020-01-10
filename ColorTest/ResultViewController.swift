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
    
    @IBOutlet weak var colerLabel: UILabel!
    
    @IBOutlet weak var colorExplanation: UITextView!

    @IBOutlet weak var colorImageView: UIImageView!
    
}


let colorImageView = [0,1,2,3,4,5,6,7,8]

let colorNameArraw = ["Blue","Green","Red","Yellow","Violet","Brown","Grey","Black"]

let colorExplanation = ["“Depth of Feeling” passive, concentric, tranquility, calm, tenderness","”Elasticity of Will” passive, concentric, defensive, persistence, self-esteem/assertion, pride, control","”Force of Will” ex-centric, active aggressive, competitive, action, desire, excitement, sexuality","“Spontaneity” ex-centric, active, projective, aspiring, expectancy, exhilaration ","“Identification” unrealistic/ wishful fulfillment, charm, enchantment","Bodily senses, indicates the body's condition ","Nothingness, renunciation, surrender or relinquishment ","Non-involvement and concealment"]
