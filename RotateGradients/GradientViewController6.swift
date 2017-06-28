//
//  GradientViewController6.swift
//  RotateGradients
//
//  Created by Imanou Petit on 28/06/2017.
//  Copyright © 2017 Imanou Petit. All rights reserved.
//

import UIKit

class Layer: CALayer {
	
	override init() {
		super.init()
		
		let gradientLayer = CAGradientLayer()
		gradientLayer.colors = [
			UIColor.blue.cgColor,
			UIColor.cyan.cgColor
		]
		
		addSublayer(gradientLayer)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func layoutSublayers() {
		sublayers?.forEach {
			$0.frame = bounds
		}
	}
	
}

import UIKit

class NewLayerContainerView: UIView {
	
	override public class var layerClass: AnyClass {
		return Layer.self
	}
	
}

import UIKit

class GradientViewController6: UIViewController {
	
	let layerView = NewLayerContainerView()
	
	override func loadView() {
		view = layerView
	}
	
}

