//
//  GradientViewController2.swift
//  Collapse
//
//  Created by Imanou Petit on 27/06/2017.
//  Copyright © 2017 Imanou Petit. All rights reserved.
//

import UIKit

class LayerContainerView: UIView {
	
	lazy var gradientLayer: CAGradientLayer = {
		let layer = CAGradientLayer()
		layer.colors = [
			UIColor.blue.cgColor,
			UIColor.cyan.cgColor
		]
		self.layer.addSublayer(layer)
		return layer
	}()
	
	override func layoutSubviews() {
		gradientLayer.frame = bounds
	}
	
}

// Also works
/*
class LayerContainerView: UIView {
	
	var gradientLayer: CAGradientLayer!
	
	override func layoutSubviews() {
		if gradientLayer == nil {
			let gradientLayer = CAGradientLayer()
			gradientLayer.colors = [
				UIColor.blue.cgColor,
				UIColor.cyan.cgColor
			]
			self.gradientLayer = gradientLayer
			layer.addSublayer(gradientLayer)
		}
		
		gradientLayer.frame = bounds
	}
	
}
*/

class GradientViewController2: UIViewController {
	
	let layerView = LayerContainerView()
	
	override func loadView() {
		view = layerView
	}
	
}
