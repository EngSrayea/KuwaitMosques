//
//  Mosque.swift
//  KuwaitMosques
//
//  Created by Eng. Norii on 5/6/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
//

import Foundation


struct Mosque: Hashable, Identifiable{
    
    var name: String
    var sheikh: String
    var location: String
    var id = UUID()
    
}

var mosques: [Mosque] = [

    Mosque(name: "العثمان",sheikh: "فهد الكندري", location: "جبله"),
    Mosque(name: "الدبوس",sheikh: "أحمد النفيس", location: "الفحيحيل"),
    Mosque(name: "الملا",sheikh: "فهد المطيري", location: "القصور")
    
    
]
