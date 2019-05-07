//
//  MASConstraintValue.swift
//  MASwifty
//
//  Created by aopod on 2019/5/8.
//

import Foundation

public protocol MASConstraintValue {}

extension Float: MASConstraintValue {}
extension Double: MASConstraintValue {}
extension CGFloat: MASConstraintValue {}
extension Float80: MASConstraintValue {}
extension Int: MASConstraintValue {}
extension Int8: MASConstraintValue {}
extension Int16: MASConstraintValue {}
extension Int32: MASConstraintValue {}
extension Int64: MASConstraintValue {}
extension UInt: MASConstraintValue {}
extension UInt8: MASConstraintValue {}
extension UInt16: MASConstraintValue {}
extension UInt32: MASConstraintValue {}
extension UInt64: MASConstraintValue {}

internal func convertValueToCGFloat(from value: MASConstraintValue) -> CGFloat {
    if let value = value as? Float { return CGFloat(value) }
    if let value = value as? Double { return CGFloat(value) }
    if let value = value as? CGFloat { return value }
    if let value = value as? Float80 { return CGFloat(value) }
    if let value = value as? Int { return CGFloat(value) }
    if let value = value as? Int8 { return CGFloat(value) }
    if let value = value as? Int16 { return CGFloat(value) }
    if let value = value as? Int32 { return CGFloat(value) }
    if let value = value as? Int64 { return CGFloat(value) }
    if let value = value as? UInt { return CGFloat(value) }
    if let value = value as? UInt8 { return CGFloat(value) }
    if let value = value as? UInt16 { return CGFloat(value) }
    if let value = value as? UInt32 { return CGFloat(value) }
    if let value = value as? Int64 { return CGFloat(value) }
    return 0
}
