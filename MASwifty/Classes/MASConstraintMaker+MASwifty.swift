//
//  MASConstraintMaker+MASwifty.swift
//  MASwifty
//
//  Created by aopod on 2019/5/8.
//

import Foundation
import Masonry

public class MASwiftyConstraintMaker {
    
    internal let maker: MASConstraintMaker
    internal init(_ maker: MASConstraintMaker) {
        self.maker = maker
    }
}

public extension MASwiftyConstraintMaker {
    
    var left: Constraint {
        return maker.left as Constraint
    }
    
    var top: Constraint {
        return maker.top as Constraint
    }
    
    var right: Constraint {
        return maker.right as Constraint
    }
    
    var bottom: Constraint {
        return maker.bottom as Constraint
    }
    
    var leading: Constraint {
        return maker.leading as Constraint
    }
    
    var trailing: Constraint {
        return maker.trailing as Constraint
    }
    
    var width: Constraint {
        return maker.width as Constraint
    }
    
    var height: Constraint {
        return maker.height as Constraint
    }
    
    var centerX: Constraint {
        return maker.centerX as Constraint
    }
    
    var centerY: Constraint {
        return maker.centerY as Constraint
    }
    
    var baseline: Constraint {
        return maker.baseline as Constraint
    }
}

@available(iOS 8.0, *)
public extension MASwiftyConstraintMaker {
    
    var firstBaseline: Constraint {
        return maker.firstBaseline as Constraint
    }
    
    var lastBaseline: Constraint {
        return maker.lastBaseline as Constraint
    }
    
    var leftMargin: Constraint {
        return maker.leftMargin as Constraint
    }
    
    var rightMargin: Constraint {
        return maker.rightMargin as Constraint
    }
    
    var topMargin: Constraint {
        return maker.topMargin as Constraint
    }
    
    var bottomMargin: Constraint {
        return maker.bottomMargin as Constraint
    }
    
    var leadingMargin: Constraint {
        return maker.leadingMargin as Constraint
    }
    
    var trailingMargin: Constraint {
        return maker.trailingMargin as Constraint
    }
    
    var centerXWithinMargins: Constraint {
        return maker.centerXWithinMargins as Constraint
    }
    
    var centerYWithinMargins: Constraint {
        return maker.centerYWithinMargins as Constraint
    }
}

public extension MASwiftyConstraintMaker {
    
    @discardableResult
    func attributes(_ attrs: MASAttribute) -> Constraint {
        return maker.attributes(attrs)! as Constraint
    }
    
    var edges: Constraint {
        return maker.edges as Constraint
    }
    
    var size: Constraint {
        return maker.size as Constraint
    }
    
    var center: Constraint {
        return maker.center as Constraint
    }
    
    var updateExisting: Bool {
        get {
            return maker.updateExisting
        }
        set {
            maker.updateExisting = newValue
        }
    }
    
    var removeExisting: Bool {
        get {
            return maker.removeExisting
        }
        set {
            maker.removeExisting = newValue
        }
    }
    
    @discardableResult
    func install() -> [Constraint] {
        let constraints = maker.install() as? [Constraint]
        return constraints ?? []
    }
    
    func group(_ group: @escaping () -> Void) -> Constraint {
        let result = maker.group()(group)!
        return result as Constraint
    }
}
