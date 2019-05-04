//
//  ConstraintLayout+ViewController.swift
//  MASwifty
//
//  Created by aopod on 2019/5/5.
//

import Foundation
import Masonry

public extension ConstraintViewController {
    
    var mas: ConstraintLayout<ConstraintViewController> {
        return ConstraintLayout(self)
    }
}

public extension ConstraintLayout where T: ConstraintViewController {
    
    var topLayoutGuide: MASViewAttribute {
        return target.mas_topLayoutGuide
    }
    
    var bottomLayoutGuide: MASViewAttribute {
        return target.mas_bottomLayoutGuide
    }
    
    var topLayoutGuideTop: MASViewAttribute {
        return target.mas_topLayoutGuideTop
    }
    
    var topLayoutGuideBottom: MASViewAttribute {
        return target.mas_topLayoutGuideBottom
    }
    
    var bottomLayoutGuideTop: MASViewAttribute {
        return target.mas_bottomLayoutGuideTop
    }
    
    var bottomLayoutGuideBottom: MASViewAttribute {
        return target.mas_bottomLayoutGuideBottom
    }
}
