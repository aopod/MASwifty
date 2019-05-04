//
//  ConstraintLayout+Array.swift
//  MASwifty
//
//  Created by aopod on 2019/5/5.
//

import Foundation
import Masonry

public extension ConstraintViewArray where Element: ConstraintView {
    
    var mas: ConstraintLayout<Array<Element>> {
        return ConstraintLayout(self)
    }
}

public extension ConstraintLayout where T == Array<UIView> {
    
    @discardableResult
    func makeConstraints(_ closure: @escaping (MASConstraintMaker) -> Void) -> [MASConstraint] {
        let function = (target as NSArray).mas_makeConstraints
        let constraints = generateConstraints(function, closure: closure)
        return constraints
    }
    
    @discardableResult
    func updateConstraints(_ closure: @escaping (MASConstraintMaker) -> Void) -> [MASConstraint] {
        let function = (target as NSArray).mas_updateConstraints
        let constraints = generateConstraints(function, closure: closure)
        return constraints
    }
    
    @discardableResult
    func remakeConstraints(_ closure: @escaping (MASConstraintMaker) -> Void) -> [MASConstraint] {
        let function = (target as NSArray).mas_remakeConstraints
        let constraints = generateConstraints(function, closure: closure)
        return constraints
    }
    
    func distribute(along axis: MASAxisType, fixedSpacing: Float, leadSpacing: Float, tailSpacing: Float) {
        (target as NSArray).mas_distributeViews(along: axis, withFixedSpacing: CGFloat(fixedSpacing), leadSpacing: CGFloat(leadSpacing), tailSpacing: CGFloat(tailSpacing))
    }
    
    func distribute(along axis: MASAxisType, fixedItemLength: Float, leadSpacing: Float, tailSpacing: Float) {
        (target as NSArray).mas_distributeViews(along: axis, withFixedItemLength: CGFloat(fixedItemLength), leadSpacing: CGFloat(leadSpacing), tailSpacing: CGFloat(tailSpacing))
    }
}
