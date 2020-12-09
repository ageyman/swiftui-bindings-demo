//
//  LoginViewModel.swift
//  LoginSwiftUIDemo
//
//  Created by Aleksandar Geyman on 9.12.20.
//

import Foundation

class LoginViewModel: LoginViewModelProtocol {

    func shouldEnableButton(text: [String]) -> Bool {
        text.first(where: {$0.isEmpty}) != nil
    }
}
