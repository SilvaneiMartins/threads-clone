//
//  LoginViewModel.swift
//  ThreadsClone
//
//  Created by Silvanei  Martins on 26/10/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
