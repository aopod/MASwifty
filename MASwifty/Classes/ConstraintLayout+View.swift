//
//  ConstraintLayout+View.swift
//  MASwifty
//
//  Created by aopod on 2019/5/5.
//

import Foundation
import Masonry

public extension ConstraintView {
    
    var mas: ConstraintLayout<ConstraintView> {
        return ConstraintLayout(self)
    }
}

public extension ConstraintLayout where T: ConstraintView {
    
    @discardableResult
    func makeConstraints(_ closure: (MASwiftyConstraintMaker) -> Void) -> [Constraint] {
        let constraints = target.mas_makeConstraints { (make) in
            guard let make = make else {
                return
            }
            let maker = MASwiftyConstraintMaker(make)
            closure(maker)
        } as? [Constraint]
        return constraints ?? []
    }
    
    @discardableResult
    func updateConstraints(_ closure: (MASwiftyConstraintMaker) -> Void) -> [Constraint] {
        let constraints = target.mas_updateConstraints { (make) in
            guard let make = make else {
                return
            }
            let maker = MASwiftyConstraintMaker(make)
            closure(maker)
        } as? [Constraint]
        return constraints ?? []
    }
    
    @discardableResult
    func remakeConstraints(_ closure: (MASwiftyConstraintMaker) -> Void) -> [Constraint] {
        let constraints = target.mas_remakeConstraints { (make) in
            guard let make = make else {
                return
            }
            let maker = MASwiftyConstraintMaker(make)
            closure(maker)
        } as? [Constraint]
        return constraints ?? []
    }
    
    @discardableResult
    func closestCommonSuperview(with view: ConstraintView) -> ConstraintView? {
        return target.mas_closestCommonSuperview(view)
    }
}

public extension ConstraintLayout where T: ConstraintView {
    
    func huggingPriority(_ priority: UILayoutPriority, for axisList: NSLayoutConstraint.Axis...) {
        for axis in axisList {
            target.setContentHuggingPriority(priority, for: axis)
        }
    }
    
    func compressionPriority(_ priority: UILayoutPriority, for axisList: NSLayoutConstraint.Axis...) {
        for axis in axisList {
            target.setContentCompressionResistancePriority(priority, for: axis)
        }
    }
}

public extension ConstraintLayout where T: ConstraintView {
    
    var left: MASViewAttribute {
        return target.mas_left
    }
    
    var top: MASViewAttribute {
        return target.mas_top
    }
    
    var right: MASViewAttribute {
        return target.mas_right
    }
    
    var bottom: MASViewAttribute {
        return target.mas_bottom
    }
    
    var leading: MASViewAttribute {
        return target.mas_leading
    }
    
    var trailing: MASViewAttribute {
        return target.mas_trailing
    }
    
    var width: MASViewAttribute {
        return target.mas_width
    }
    
    var height: MASViewAttribute {
        return target.mas_height
    }
    
    var centerX: MASViewAttribute {
        return target.mas_centerX
    }
    
    var centerY: MASViewAttribute {
        return target.mas_centerY
    }
    
    var baseLine: MASViewAttribute {
        return target.mas_baseline
    }
    
    @discardableResult
    func attribute(_ attribute: NSLayoutConstraint.Attribute) -> MASViewAttribute {
        return target.mas_attribute(attribute)!
    }
}

@available(iOS 8.0, *)
public extension ConstraintLayout where T: ConstraintView {
    
    var firstBaseline: MASViewAttribute {
        return target.mas_firstBaseline
    }
    
    var lastBaseline: MASViewAttribute {
        return target.mas_lastBaseline
    }
    
    var leftMargin: MASViewAttribute {
        return target.mas_leftMargin
    }
    
    var rightMargin: MASViewAttribute {
        return target.mas_rightMargin
    }
    
    var topMargin: MASViewAttribute {
        return target.mas_topMargin
    }
    
    var bottomMargin: MASViewAttribute {
        return target.mas_bottomMargin
    }
    
    var leadingMargin: MASViewAttribute {
        return target.mas_leadingMargin
    }
    
    var trailingMargin: MASViewAttribute {
        return target.mas_trailingMargin
    }
    
    var centerXWithinMargins: MASViewAttribute {
        return target.mas_centerXWithinMargins
    }
    
    var centerYWithinMargins: MASViewAttribute {
        return target.mas_centerYWithinMargins
    }
}

@available(iOS 11.0, *)
public extension ConstraintLayout where T: ConstraintView {
    
    var safeAreaLayoutGuide: MASViewAttribute {
        return target.mas_safeAreaLayoutGuide
    }
    
    var safeAreaLayoutGuideTop: MASViewAttribute {
        return target.mas_safeAreaLayoutGuideTop
    }
    
    var safeAreaLayoutGuideBottom: MASViewAttribute {
        return target.mas_safeAreaLayoutGuideBottom
    }
    
    var safeAreaLayoutGuideLeft: MASViewAttribute {
        return target.mas_safeAreaLayoutGuideLeft
    }
    
    var safeAreaLayoutGuideRight: MASViewAttribute {
        return target.mas_safeAreaLayoutGuideRight
    }
}
