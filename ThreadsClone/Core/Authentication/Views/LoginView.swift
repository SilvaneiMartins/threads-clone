//
//  LoginView.swift
//  ThreadsClone
//
//  Created by Silvanei  Martins on 04/09/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("threads-app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 120)
                    .padding()
                
                VStack {
                    TextField("Digite seu e-mail", text: $email)
                        .autocapitalization( .none)
                        .modifier(ThreadsTextFieldModifier())
                    
                    SecureField("Digite seu password", text: $password)
                        .modifier(ThreadsTextFieldModifier())
                }
                
                NavigationLink {
                    Text("Esqueceu seu password")
                } label: {
                    Text("Esqueceu seu password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    
                } label: {
                    Text("Entrar")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 44)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    RegistrationView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3) {
                        Text("Não tem conta?")
                        
                        Text("Cadastra-se")
                            .fontWeight( .semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }// Nagigation Stack
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
