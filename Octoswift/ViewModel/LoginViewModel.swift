//
//  LoginViewModel.swift
//  Octoswift
//
//  Created by Wong Zigii on 10/13/16.
//  Copyright © 2016 ZigiiWong. All rights reserved.
//

import Foundation
import ReactiveSwift
import Result
import OctoKit

class LoginViewModel: BaseViewModel {
	
	private(set) var email = MutableProperty<String>("")
	private(set) var avatarURL = MutableProperty<String>("")
	
	private(set) var validLogin: SignalProducer<Bool, NoError>!
	
//	private(set) var browserLogin: SignalProducer
//	private(set) var exchangeToken: SignalProducer
//	private(set) var login: SignalProducer

	var client = OCTClient()
	var password = MutableProperty<String>("")
	var username = MutableProperty<String>("")
	
	override init() {
//		self.avatarURL <~ username.producer.map()
		
		self.validLogin = combineLatest(username.producer, password.producer)
			.map({(username, password) -> Bool in
				return username.characters.count > 0 && password.characters.count > 0
			})
			.skipRepeats()
	}
}
