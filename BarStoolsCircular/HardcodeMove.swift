//
//  HardcodeMove.swift
//  BarStoolsCircular
//
//  Created by Kayla Jensen on 7/20/16.
//  Copyright © 2016 kaylajensencoding. All rights reserved.
//

import UIKit


class HardcodeMove: UIViewController {

    lazy var backButton: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = UIColor.blackColor()
        //button.setTitle("HELLO", forState: .Normal)
        button.setTitle(self.name, forState: .Normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button.layer.cornerRadius = 50
        button.addTarget(self, action: #selector(backToBarstools), forControlEvents: .TouchUpInside)
        return button
    }()

    var name: String? {
        didSet {
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        print("made it to hardcodemove")
        print(name)
        
        view.addSubview(backButton)
        
        backButton.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active = true
        backButton.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
        backButton.widthAnchor.constraintEqualToConstant(100).active = true
        backButton.heightAnchor.constraintEqualToConstant(100).active = true
        
    }
    
    func backToBarstools() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
}
