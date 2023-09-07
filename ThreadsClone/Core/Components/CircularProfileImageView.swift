//
//  CircularProfileImageView.swift
//  ThreadsClone
//
//  Created by Silvanei  Martins on 05/09/23.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("silvanei-martins")
            .resizable()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
