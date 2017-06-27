//
//  GradientViewController3.swift
//  Collapse
//
//  Created by Imanou Petit on 27/06/2017.
//  Copyright © 2017 Imanou Petit. All rights reserved.
//

import UIKit

class GradientViewController3: UIViewController {
	
	var observation: NSKeyValueObservation?
	
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
		
		// Also works
		/*
		observation = observe(\.view.frame, options: [.new], changeHandler: { [unowned self] (object: GradientViewController3, change: NSKeyValueObservedChange<CGRect>) in
			guard let frame = change.newValue else { return }
			self.gradientLayer.frame = frame
		})
		*/
		
		observation = view.observe(\.frame, options: [.new], changeHandler: { [unowned self] (object: UIView, change: NSKeyValueObservedChange<CGRect>) in
			guard let frame = change.newValue else { return }
			self.gradientLayer.frame = frame
		})
	}
	
}
