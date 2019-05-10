//
//  MASConstraint+MASwifty.swift
//  MASwifty
//
//  Created by aopod on 2019/5/4.
//

import Foundation
import Masonry

public protocol MASwiftyConstraint {
    
    typealias Value = MASConstraintValue
    
    @discardableResult func insets(_ insets: UIEdgeInsets) -> Constraint
    @discardableResult func insets(_ insets: (top: Value, left: Value, bottom: Value, right: Value)) -> Constraint
    @discardableResult func inset<T: Value>(_ inset: T) -> Constraint
    @discardableResult func sizeOffset(_ offset: CGSize) -> Constraint
    @discardableResult func sizeOffset(_ offset: (width: Value, height: Value)) -> Constraint
    @discardableResult func centerOffset(_ offset: CGPoint) -> Constraint
    @discardableResult func centerOffset(_ offset: (x: Value, y: Value)) -> Constraint
    @discardableResult func offset<T: Value>(_ offset: T) -> Constraint
    @discardableResult func valueOffset(_ value: NSValue) -> Constraint
    @discardableResult func multipliedBy<T: Value>(_ multiplier: T) -> Constraint
    @discardableResult func dividedBy<T: Value>(_ divider: T) -> Constraint
    @discardableResult func priority(_ priority: MASConstraint.LayoutPriority) -> Constraint
    @discardableResult func priority<T: Value>(_ priority: T) -> Constraint
    @discardableResult func equalTo(_ target: Any?) -> Constraint
    @discardableResult func greaterThanOrEqualTo(_ target: Any?) -> Constraint
    @discardableResult func lessThanOrEqualTo(_ target: Any?) -> Constraint
    
    @discardableResult func equalToSuperview() -> Constraint
    @discardableResult func equalToSuperview<T: Value>(_ offset: T) -> Constraint
    
    var with: Constraint { get }
    var and: Constraint { get }
    var left: Constraint { get }
    var top: Constraint { get }
    var right: Constraint { get }
    var bottom: Constraint { get }
    var leading: Constraint { get }
    var trailing: Constraint { get }
    var width: Constraint { get }
    var height: Constraint { get }
    var centerX: Constraint { get }
    var centerY: Constraint { get }
    var baseline: Constraint { get }
    
    @available(iOS 8.0, *) var firstBaseline: Constraint { get }
    @available(iOS 8.0, *) var lastBaseline: Constraint { get }
    @available(iOS 8.0, *) var leftMargin: Constraint { get }
    @available(iOS 8.0, *) var rightMargin: Constraint { get }
    @available(iOS 8.0, *) var topMargin: Constraint { get }
    @available(iOS 8.0, *) var bottomMargin: Constraint { get }
    @available(iOS 8.0, *) var leadingMargin: Constraint { get }
    @available(iOS 8.0, *) var trailingMargin: Constraint { get }
    @available(iOS 8.0, *) var centerXWithinMargins: Constraint { get }
    @available(iOS 8.0, *) var centerYWithinMargins: Constraint { get }
    
    @discardableResult func key(_ target: Any?) -> Constraint
    
    func activate()
    func deactivate()
    func install()
    func uninstall()
}

extension MASConstraint: MASwiftyConstraint {}

public extension MASConstraint {
    
    func insets(_ insets: UIEdgeInsets) -> Constraint {
        self.insets()(insets)
        return self
    }
    
    func insets(_ insets: (top: Value, left: Value, bottom: Value, right: Value)) -> Constraint {
        let topValue = convertValueToCGFloat(from: insets.top)
        let leftValue = convertValueToCGFloat(from: insets.left)
        let bottomValue = convertValueToCGFloat(from: insets.bottom)
        let rightValue = convertValueToCGFloat(from: insets.right)
        let insetsValue = UIEdgeInsets(top: topValue, left: leftValue, bottom: bottomValue, right: rightValue)
        self.insets()(insetsValue)
        return self
    }
    
    func inset<T: Value>(_ inset: T) -> Constraint {
        let value = convertValueToCGFloat(from: inset)
        self.inset()(value)
        return self
    }
    
    func sizeOffset(_ offset: CGSize) -> Constraint {
        self.sizeOffset()(offset)
        return self
    }
    
    func sizeOffset(_ offset: (width: Value, height: Value)) -> Constraint {
        let widthValue = convertValueToCGFloat(from: offset.width)
        let heightValue = convertValueToCGFloat(from: offset.height)
        let offsetValue = CGSize(width: widthValue, height: heightValue)
        self.sizeOffset()(offsetValue)
        return self
    }
    
    func centerOffset(_ offset: CGPoint) -> Constraint {
        self.centerOffset()(offset)
        return self
    }
    
    func centerOffset(_ offset: (x: Value, y: Value)) -> Constraint {
        let xValue = convertValueToCGFloat(from: offset.x)
        let yValue = convertValueToCGFloat(from: offset.y)
        let offsetValue = CGPoint(x: xValue, y: yValue)
        self.centerOffset()(offsetValue)
        return self
    }
    
    func offset<T: Value>(_ offset: T) -> Constraint {
        let value = convertValueToCGFloat(from: offset)
        self.offset()(value)
        return self
    }
    
    func valueOffset(_ value: NSValue) -> Constraint {
        self.valueOffset()(value)
        return self
    }
    
    func multipliedBy<T: Value>(_ multiplier: T) -> Constraint {
        let value = convertValueToCGFloat(from: multiplier)
        self.multipliedBy()(value)
        return self
    }
    
    func dividedBy<T: Value>(_ divider: T) -> Constraint {
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
    
    func priority(_ priority: LayoutPriority) -> Constraint {
        return self.priority(priority.rawValue)
    }
    
    func priority<T: Value>(_ priority: T) -> Constraint {
        let value = convertValueToCGFloat(from: priority)
        let priorityValue = MASLayoutPriority(rawValue: Float(value))
        self.priority()(priorityValue)
        return self
    }
    
    func equalTo(_ target: Any?) -> Constraint {
        self.equalTo()(target)
        return self
    }
    
    func greaterThanOrEqualTo(_ target: Any?) -> Constraint {
        self.greaterThanOrEqualTo()(target)
        return self
    }
    
    func lessThanOrEqualTo(_ target: Any?) -> Constraint {
        self.lessThanOrEqualTo()(target)
        return self
    }
}

public extension MASConstraint {
    
    func equalToSuperview() -> Constraint {
        return self.equalTo(0)
    }
    
    func equalToSuperview<T: Value>(_ offset: T) -> Constraint {
        let value = convertValueToCGFloat(from: offset)
        return self.equalTo(value)
    }
}

public extension MASConstraint {
    
    var with: Constraint {
        return self
    }
    
    var and: Constraint {
        return self
    }
    
    var left: Constraint {
        return left()
    }
    
    var top: Constraint {
        return top()
    }
    
    var right: Constraint {
        return right()
    }
    
    var bottom: Constraint {
        return bottom()
    }
    
    var leading: Constraint {
        return leading()
    }
    
    var trailing: Constraint {
        return trailing()
    }
    
    var width: Constraint {
        return width()
    }
    
    var height: Constraint {
        return height()
    }
    
    var centerX: Constraint {
        return centerX()
    }
    
    var centerY: Constraint {
        return centerY()
    }
    
    var baseline: Constraint {
        return baseline()
    }
}

@available(iOS 8.0, *)
public extension MASConstraint {
    
    var firstBaseline: Constraint {
        return firstBaseline()
    }
    
    var lastBaseline: Constraint {
        return lastBaseline()
    }
    
    var leftMargin: Constraint {
        return leftMargin()
    }
    
    var rightMargin: Constraint {
        return rightMargin()
    }
    
    var topMargin: Constraint {
        return topMargin()
    }
    
    var bottomMargin: Constraint {
        return bottomMargin()
    }
    
    var leadingMargin: Constraint {
        return leadingMargin()
    }
    
    var trailingMargin: Constraint {
        return trailingMargin()
    }
    
    var centerXWithinMargins: Constraint {
        return centerXWithinMargins()
    }
    
    var centerYWithinMargins: Constraint {
        return centerYWithinMargins()
    }
    
    func key(_ key: Any?) -> Constraint {
        self.key()(key)
        return self
    }
}
