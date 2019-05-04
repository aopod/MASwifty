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

internal func generateConstraints(_ function: @escaping (((MASConstraintMaker?) -> Void)?) -> [Any]?, closure: @escaping (MASConstraintMaker) -> Void) -> [MASConstraint] {
    let constraints = function { (make) in
        guard let make = make else {
            return
        }
        closure(make)
        } as? [MASConstraint]
    return constraints ?? []
}
