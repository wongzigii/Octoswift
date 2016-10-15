//
//  LoginViewController.swift
//  Octoswift
//
//  Created by Wong Zigii on 10/12/16.
//  Copyright © 2016 ZigiiWong. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
	
	var viewModel: LoginViewModel?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		viewModel = LoginViewModel()
	}
	
	func initViewModelBindings() {
		
	}
}
