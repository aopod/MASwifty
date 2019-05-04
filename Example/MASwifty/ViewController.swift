//
//  ViewController.swift
//  MASwifty
//
//  Created by aopod on 04/30/2019.
//  Copyright (c) 2019 aopod.com. All rights reserved.
//

import UIKit
import MASwifty

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupView()
    }

    func setupView() {
        
        let view = UIView()
        view.backgroundColor = UIColor.blue
        self.view.addSubview(view)
        view.mas.makeConstraints { (make) in
            make.center.equalTo(self.view)
            make.width.equalTo(self.view).multipliedBy(0.6).priority(.medium)
            make.height.equalTo(self.view).multipliedBy(0.6).priority(.medium)
        }
        
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Hello, World!\nAlways a long long long long long text"
        label.textColor = UIColor.white
        view.addSubview(label)
        label.mas.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.leading.greaterThanOrEqualTo(view).offset(20)
            make.trailing.lessThanOrEqualTo(view).offset(-20)
        }
        label.mas.compressionPriority(.required, for: .horizontal, .vertical)
        
        let header = UIView()
        header.backgroundColor = UIColor.red
        self.view.addSubview(header)
        header.mas.makeConstraints { (make) in
            make.top.equalTo(self.mas.topLayoutGuideBottom)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(44)
        }
        
        let footer = UIView()
        footer.backgroundColor = UIColor.gray
        self.view.addSubview(footer)
        footer.mas.makeConstraints { (make) in
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(self.mas.bottomLayoutGuideTop)
            make.height.equalTo(44)
        }
        
        let colors: [UIColor] = [
            .red, .blue, .green
        ]
        var footerViews: [UIView] = []
        for i in 0...6 {
            let colorIndex = i % colors.count
            let view = UIView()
            view.backgroundColor = colors[colorIndex]
            footer.addSubview(view)
            footerViews.append(view)
            view.mas.makeConstraints { (make) in
                make.top.bottom.equalToSuperview()
            }
        }
        footerViews.mas.distribute(along: .horizontal, fixedSpacing: 10, leadSpacing: 10, tailSpacing: 10)
    }
}

