//
//  GradientViewController5.swift
//  RotateGradients
//
//  Created by Imanou Petit on 28/06/2017.
//  Copyright © 2017 Imanou Petit. All rights reserved.
//

import UIKit

class NewLayerView: UIView {
	
	required init() {
		super.init(frame: .zero)
		
		let gradientLayer = CAGradientLayer()
		gradientLayer.colors = [
			UIColor.blue.cgColor,
			UIColor.cyan.cgColor
		]
		
		layer.addSublayer(gradientLayer)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func layoutSublayers(of layer: CALayer) {
		layer.sublayers?.forEach {
			$0.frame = layer.bounds
		}
	}
	
}

class GradientViewController5: UIViewController {

	let layerView = NewLayerView()
	
	override func loadView() {
		view = layerView
	}
	
}
