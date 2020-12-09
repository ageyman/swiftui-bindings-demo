//
//  LoginButtonView.swift
//  LoginSwiftUIDemo
//
//  Created by Aleksandar Geyman on 9.12.20.
//

import SwiftUI

struct LoginButtonView: View {
    @Environment(\.isEnabled) private var isEnabled

    var body: some View {
        Button(action: {}) {
            Text("Login")
                .fontWeight(.bold)
                .font(.title2)
                .padding(5)
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width * 0.67)
        }
        .buttonStyle(LoginButtonStyle(isEnabled: isEnabled))
        .cornerRadius(22)
    }
}

struct LoginButtonStyle: ButtonStyle {
    var isEnabled: Bool = true

    func makeBody(configuration: Self.Configuration) -> some View {
        let color: Color = isEnabled ? .blue : .gray
        return configuration.label.background(color)
    }
}
