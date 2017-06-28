//
//  GradientViewController4.swift
//  Collapse
//
//  Created by Imanou Petit on 27/06/2017.
//  Copyright © 2017 Imanou Petit. All rights reserved.
//

import UIKit

class LayerView: UIView {
	
	override public class var layerClass: AnyClass {
		return CAGradientLayer.self
	}
	
	required init() {
		super.init(frame: .zero)
		
		guard let gradientLayer = layer as? CAGradientLayer else { return }
		gradientLayer.colors = [
			UIColor.blue.cgColor,
			UIColor.cyan.cgColor
		]
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}

class GradientViewController4: UIViewController {
	
	let layerView = LayerView()
	
	override func loadView() {
		view = layerView
	}
		
}
