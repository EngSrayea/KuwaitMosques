//
//  Timings.swift
//  KuwaitMosques
//
//  Created by Eng. Norii on 5/7/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
//

import Foundation
import SwiftUI

struct Timing: Hashable, Identifiable{
    
    var name: String
    var time: String
    
    var id = UUID()
    
}

var timings: [Timing] = [ Timing(name: "الفجر",time: "4:00am"), Timing(name: "الشروق",time: "5:00am"), Timing(name: "الظهر",time: "11:55am"), Timing(name: "العصر",time: "3:10pm"), Timing(name: "المغرب",time: "6:10pm"), Timing(name: "العشاء",time: "7:50pm")
]

