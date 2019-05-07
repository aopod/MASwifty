//
//  MASConstraint+MASwifty.swift
//  MASwifty
//
//  Created by aopod on 2019/5/4.
//

import Foundation
import Masonry

public extension MASConstraint {
    
    @discardableResult
    func insets(_ insets: UIEdgeInsets) -> MASConstraint {
        self.insets()(insets)
        return self
    }
    
    @discardableResult
    func inset<T: MASConstraintValue>(_ inset: T) -> MASConstraint {
        let value = convertValueToCGFloat(from: inset)
        self.inset()(value)
        return self
    }
    
    @discardableResult
    func sizeOffset(_ offset: CGSize) -> MASConstraint {
        self.sizeOffset()(offset)
        return self
    }
    
    @discardableResult
    func centerOffset(_ offset: CGPoint) -> MASConstraint {
        self.centerOffset()(offset)
        return self
    }
    
    @discardableResult
    func offset<T: MASConstraintValue>(_ offset: T) -> MASConstraint {
        let value = convertValueToCGFloat(from: offset)
        self.offset()(value)
        return self
    }
    
    @discardableResult
    func valueOffset(_ value: NSValue) -> MASConstraint {
        self.valueOffset()(value)
        return self
    }
    
    @discardableResult
    func multipliedBy<T: MASConstraintValue>(_ multiplier: T) -> MASConstraint {
        let value = convertValueToCGFloat(from: multiplier)
        self.multipliedBy()(value)
        return self
    }
    
    @discardableResult
    func dividedBy<T: MASConstraintValue>(_ divider: T) -> MASConstraint {
        let value = convertValueToCGFloat(from: divider)
        self.dividedBy()(value)
        return self
    }
    
    enum LayoutPriority: Float {
        case fittingSizeLevel = 50
        case low = 250
        case medium = 500
        case high = 750
        case required = 1000
    }
    
    @discardableResult
    func priority(_ priority: LayoutPriority) -> MASConstraint {
        return self.priority(priority.rawValue)
    }
    
    @discardableResult
    func priority<T: MASConstraintValue>(_ priority: T) -> MASConstraint {
        let value = convertValueToCGFloat(from: priority)
        let priorityValue = MASLayoutPriority(rawValue: Float(value))
        self.priority()(priorityValue)
        return self
    }
    
    @discardableResult
    func equalTo(_ target: Any?) -> MASConstraint {
        self.equalTo()(target)
        return self
    }
    
    @discardableResult
    func greaterThanOrEqualTo(_ target: Any?) -> MASConstraint {
        self.greaterThanOrEqualTo()(target)
        return self
    }
    
    @discardableResult
    func lessThanOrEqualTo(_ target: Any?) -> MASConstraint {
        self.lessThanOrEqualTo()(target)
        return self
    }
}

public extension MASConstraint {
    
    @discardableResult
    func equalToSuperview() -> MASConstraint {
        return self.equalTo(0)
    }
    
    @discardableResult
    func equalToSuperview<T: MASConstraintValue>(_ offset: T) -> MASConstraint {
        let value = convertValueToCGFloat(from: offset)
        return self.equalTo(value)
    }
}

public extension MASConstraint {
    
    var with: MASConstraint {
        return self
    }
    
    var and: MASConstraint {
        return self
    }
    
    var left: MASConstraint {
        return left()
    }
    
    var top: MASConstraint {
        return top()
    }
    
    var right: MASConstraint {
        return right()
    }
    
    var bottom: MASConstraint {
        return bottom()
    }
    
    var leading: MASConstraint {
        return leading()
    }
    
    var trailing: MASConstraint {
        return trailing()
    }
    
    var width: MASConstraint {
        return width()
    }
    
    var height: MASConstraint {
        return height()
    }
    
    var centerX: MASConstraint {
        return centerX()
    }
    
    var centerY: MASConstraint {
        return centerY()
    }
    
    var baseline: MASConstraint {
        return baseline()
    }
}

@available(iOS 8.0, *)
public extension MASConstraint {
    
    var firstBaseline: MASConstraint {
        return firstBaseline()
    }
    
    var lastBaseline: MASConstraint {
        return lastBaseline()
    }
    
    var leftMargin: MASConstraint {
        return leftMargin()
    }
    
    var rightMargin: MASConstraint {
        return rightMargin()
    }
    
    var topMargin: MASConstraint {
        return topMargin()
    }
    
    var bottomMargin: MASConstraint {
        return bottomMargin()
    }
    
    var leadingMargin: MASConstraint {
        return leadingMargin()
    }
    
    var trailingMargin: MASConstraint {
        return trailingMargin()
    }
    
    var centerXWithinMargins: MASConstraint {
        return centerXWithinMargins()
    }
    
    var centerYWithinMargins: MASConstraint {
        return centerYWithinMargins()
    }
}
