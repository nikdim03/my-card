//
//  InfoView.swift
//  MyCard
//
//  Created by Dmitriy on 3/27/22.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50, alignment: .center)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text).bold()
                    .foregroundColor(Color("TextColor"))
            })
            .padding()
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+1 (234) 567-89-10", imageName: "phone")
            .previewLayout(.sizeThatFits)
    }
}
