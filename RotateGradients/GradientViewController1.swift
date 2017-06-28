//
//  GradientViewController1.swift
//  Collapse
//
//  Created by Imanou Petit on 27/06/2017.
//  Copyright © 2017 Imanou Petit. All rights reserved.
//

import UIKit

class GradientViewController1: UIViewController {
	
	let gradientLayer: CAGradientLayer = {
		let layer = CAGradientLayer()
		layer.colors = [
			UIColor.blue.cgColor,
			UIColor.cyan.cgColor
		]
		return layer
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.layer.addSublayer(gradientLayer)
		gradientLayer.frame = view.bounds
	}
	
	override func viewDidLayoutSubviews() {
		gradientLayer.frame = view.bounds
	}
	
}
