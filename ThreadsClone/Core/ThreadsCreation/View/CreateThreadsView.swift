//
//  CreateThreadsView.swift
//  ThreadsClone
//
//  Created by Silvanei  Martins on 04/09/23.
//

import SwiftUI

struct CreateThreadsView: View {
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    HStack(alignment: .top) {
                        CircularProfileImageView()
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("silvanei_martins")
                                .fontWeight(.semibold)
                            
                            TextField("Digite sua postagem", text: $caption, axis: .vertical)
                                .font(.footnote)
                        }
                        
                        Spacer()
                        
                        if !caption.isEmpty {
                            Button {
                                caption = ""
                            } label: {
                                Image(systemName: "xmark")
                                    .resizable()
                                    .frame(width: 12, height: 12)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Nova Postagem")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancelar") {
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Postar") {
                    
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

struct CreateThreadsView_Previews: PreviewProvider {
    static var previews: some View {
        CreateThreadsView()
    }
}
