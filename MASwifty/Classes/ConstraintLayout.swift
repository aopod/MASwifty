//
//  ConstraintLayout.swift
//  Masonry
//
//  Created by aopod on 2019/5/4.
//

import Foundation
import Masonry

public struct ConstraintLayout<T> {
    
    internal let target: T
    
    internal init(_ target: T) {
        self.target = target
    }
}
