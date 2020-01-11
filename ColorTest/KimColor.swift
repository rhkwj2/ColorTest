//
//  ColorChoser.swift
//  ColorTest
//
//  Created by Kim Yeon Jeong on 2020/1/11.
//  Copyright © 2020 Kim Yeon Jeong. All rights reserved.
//

import Foundation
import UIKit

enum KimColor: Int {
    case blue, green, red, yellow, purple, brwon, black, gray
    
    func getUIColor() -> UIColor {
        switch self {
        case .blue:
            return .systemBlue
        case .green:
            return .systemGreen
        case .red:
            return .systemRed
        case  .yellow:
            return .systemYellow
        case  .purple:
            return .systemPurple
        case  .brwon:
            return .brown
        case  .black:
            return .black
        default:
            return .systemGray
        }
    }
    
    var name: String {
        let colorNameArraw = ["Blue","Green","Red","Yellow","Violet","Brown","Grey","Black"]
        
        return colorNameArraw[self.rawValue]
    }
    
    var getExplanation: String {
        let colorExplanation = ["“Depth of Feeling” passive, concentric, tranquility, calm, tenderness","”Elasticity of Will” passive, concentric, defensive, persistence, self-esteem/assertion, pride, control","”Force of Will” ex-centric, active aggressive, competitive, action, desire, excitement, sexuality","“Spontaneity” ex-centric, active, projective, aspiring, expectancy, exhilaration ","“Identification” unrealistic/ wishful fulfillment, charm, enchantment","Bodily senses, indicates the body's condition ","Nothingness, renunciation, surrender or relinquishment ","Non-involvement and concealment"]
        
        
        return colorExplanation[self.rawValue]
    }
}

