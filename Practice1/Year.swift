//
//  Year.swift
//  CCTestTests
//
//  Created by 김예은 on 09/02/2019.
//  Copyright © 2019 kyeahen. All rights reserved.
//

import Foundation

struct Year {
    let calendarYear:Int

    var isLeapYear:Bool {
        get {
            return calendarYear % 4 == 0 && ( calendarYear % 100 != 0 || calendarYear % 400 == 0)
        }
    }
}


