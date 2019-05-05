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
    func makeConstraints(_ closure: (MASConstraintMaker) -> Void) -> [MASConstraint] {
        let target = self.target as NSArray
        let constraints = target.mas_makeConstraints { (make) in
            guard let make = make else {
                return
            }
            closure(make)
        } as? [MASConstraint]
        return constraints ?? []
    }
    
    @discardableResult
    func updateConstraints(_ closure: (MASConstraintMaker) -> Void) -> [MASConstraint] {
        let target = self.target as NSArray
        let constraints = target.mas_updateConstraints { (make) in
            guard let make = make else {
                return
            }
            closure(make)
        } as? [MASConstraint]
        return constraints ?? []
    }
    
    @discardableResult
    func remakeConstraints(_ closure: (MASConstraintMaker) -> Void) -> [MASConstraint] {
        let target = self.target as NSArray
        let constraints = target.mas_remakeConstraints { (make) in
            guard let make = make else {
                return
            }
            closure(make)
        } as? [MASConstraint]
        return constraints ?? []
    }
    
    func distribute(along axis: MASAxisType, fixedSpacing: Float, leadSpacing: Float, tailSpacing: Float) {
        (target as NSArray).mas_distributeViews(along: axis, withFixedSpacing: CGFloat(fixedSpacing), leadSpacing: CGFloat(leadSpacing), tailSpacing: CGFloat(tailSpacing))
    }
    
    func distribute(along axis: MASAxisType, fixedItemLength: Float, leadSpacing: Float, tailSpacing: Float) {
        (target as NSArray).mas_distributeViews(along: axis, withFixedItemLength: CGFloat(fixedItemLength), leadSpacing: CGFloat(leadSpacing), tailSpacing: CGFloat(tailSpacing))
    }
}
