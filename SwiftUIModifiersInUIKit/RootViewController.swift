//
//  RootViewController.swift
//  SwiftUIModifiersInUIKit
//
//  Created by Alex Nagy on 14/06/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit
import TinyConstraints

class RootViewController: UIViewController {
    
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        view.addSubview(label)
        label.centerInSuperview()
        
        label.text("Turtle Rock")
            .font(.systemFont(ofSize: 24))
            .color(.green)
    }


}

extension UILabel {
    
    @discardableResult
    func text(_ text: String?) -> UILabel {
        self.text = text
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> UILabel {
        self.font = font
        return self
    }
    
    @discardableResult
    func color(_ color: UIColor) -> UILabel {
        textColor = color
        return self
    }
}
