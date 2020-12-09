//
//  ContentView.swift
//  LoginSwiftUIDemo
//
//  Created by Aleksandar Geyman on 9.12.20.
//

import SwiftUI

protocol LoginViewModelProtocol: class {
    func shouldEnableButton(text: [String]) -> Bool
}

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""

    private let viewModel: LoginViewModelProtocol = LoginViewModel()

    var body: some View {
        VStack(spacing: 12){
            Spacer()
                .frame(height: 200)
            TextField("email", text: $email)
                .frame(width: UIScreen.main.bounds.width * 0.67)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.headline)
            SecureField("password", text: $password)
                .frame(width: UIScreen.main.bounds.width * 0.67)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.headline)
            LoginButtonView()
                .disabled(viewModel.shouldEnableButton(text: [email, password]))
        }
        Spacer()
    }
}
