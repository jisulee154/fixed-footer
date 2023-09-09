//
//  FooterView.swift
//  FixFooterDemo
//
//  Created by 이지수 on 2023/09/09.
//

import UIKit
import SnapKit

class FooterView: UIView {
    var containerView: UIView!
    var label: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented.")
    }
    
    func setUpView() {
        containerView = UIView()
        containerView.backgroundColor = .systemGray4
        
        label = UILabel()
        label.text = "It's a fixed footer"
        
        self.addSubview(containerView)
        self.addSubview(label)
        
        //MARK: - setting auto layout
        containerView.snp.makeConstraints {
            $0.edges.equalTo(self)
        }
        
        label.snp.makeConstraints {
            $0.centerX.equalTo(self)
            $0.centerY.equalTo(self)
            $0.width.equalTo(200)
            $0.height.equalTo(80)
        }
    }
}
