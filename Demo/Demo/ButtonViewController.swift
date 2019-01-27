//
//  ButtonViewController.swift
//  Demo
//
//  Created by you_matz on 2019/01/27.
//  Copyright © 2019 you_matz. All rights reserved.
//

import UIKit
import RippleEffect

final class ButtonViewController: UIViewController {

    @IBOutlet weak var button: MKButton!
    @IBOutlet weak var button2: MKButton!
    @IBOutlet weak var button3: MKButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button2.backgroundAnimationEnabled = false
        button2.rippleLayerColor = .orange
        
        button3.maskEnabled = false
        button3.rippleLayerColor = .purple
    }
}
