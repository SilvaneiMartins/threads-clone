//
//  EditProfileView.swift
//  ThreadsClone
//
//  Created by Silvanei  Martins on 06/09/23.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                
                VStack {
                    // name and profile image
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Nome")
                                .fontWeight(.semibold)
                            
                            Text("Silvanei Martins")
                        }
                        
                        Spacer()
                        
                        CircularProfileImageView()
                    }
                    .padding(.vertical, 6)
                    
                    Divider()
                    
                    // bio field
                    VStack(alignment: .leading) {
                        Text("Biografia")
                            .fontWeight(.semibold)
                        
                        TextField("Escreva sua biografia...", text: $bio, axis: .vertical)
                    }
                    .padding(.vertical, 6)
                    
                    Divider()
                    
                    // add link
                    VStack(alignment: .leading) {
                        Text("Link")
                            .fontWeight(.semibold)
                        
                        TextField("Adicionar um link...", text: $link)
                    }
                    .padding(.vertical, 6)
                    
                    Divider()
                    
                    Toggle("Perfil Privado", isOn: $isPrivateProfile)
                        .padding(.vertical, 6)
                        
                }
                .padding()
                .background(.white)
                .font(.footnote)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
                .padding()
            }
            .navigationTitle("Editar Perfil")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancelar") {
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("OK") {
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
