//
//  Info.swift
//  動態TableViewcell(使用內建格式與自定義格式)
//
//  Created by JeffApp on 2023/5/15.
//

import Foundation

struct Subject{
    let topic:String
    let grade:String
    let intro:String
    let date:String
    let category:String
    let purpose:String
}


enum intro:String{
    case addictedToWar = "BBC war correspondent Fergal Keane tells his story."
    case expressionNoStrongFeelings = "\"I can take it or leave it\" - Learn the language for when you want to express no strong feelings."
    case waterCrisis = "Learn about the pressure on water supplier bu climate change and how law could stop crisis."
    case princeCharles = "Charles III has been crowned King of the UK and the Commonwealth of Nations in a coronation ceremony. Learn more about this story."
    
    
}
