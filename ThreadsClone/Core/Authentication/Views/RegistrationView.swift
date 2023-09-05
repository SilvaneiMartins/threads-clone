//
//  RegistrationView.swift
//  ThreadsClone
//
//  Created by Silvanei  Martins on 04/09/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("threads-app-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Digite seu e-mail", text: $email)
                    .autocapitalization(.none)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Digite seu password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Digite seu nome completo", text: $fullname)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Digite seu nome de usuário", text: $username)
                    .modifier(ThreadsTextFieldModifier())
            }
        
            Button {
                
            } label: {
                Text("Cadastrar")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                 dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Já tem conta?")
                    
                    Text("Logar-se")
                        .fontWeight( .semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }// VStack
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
