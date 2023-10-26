//
//  AuthService.swift
//  ThreadsClone
//
//  Created by Silvanei  Martins on 26/10/23.
//

import Firebase
import Foundation

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: Usuário criado \(result.user.uid)")
        } catch {
            print("DEBUG: Falha ao criar usuário com erro \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: Usuário criado \(result.user.uid)")
        } catch {
            print("DEBUG: Falha ao criar usuário com erro \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}
