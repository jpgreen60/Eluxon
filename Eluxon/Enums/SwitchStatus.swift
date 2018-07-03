//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by John Green on -07-032018.
//  Copyright © 2018 John P. Green. All rights reserved.
//

import Foundation

enum SwitchStatus: TogglAble {
    case on, off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}
