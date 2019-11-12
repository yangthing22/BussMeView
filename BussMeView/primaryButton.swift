//
//  primaryButton.swift
//  BussMeView
//
//  Created by Kevin Susanto on 12/11/19.
//  Copyright © 2019 Mulyanti Law. All rights reserved.
//

import UIKit

class primaryButton: UIButton {

    override func didMoveToWindow() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor(displayP3Red: 255/255, green: 200/255, blue: 0/255, alpha: 1)
        self.layer.cornerRadius = frame.height / 6
        clipsToBounds = true
    }

}
