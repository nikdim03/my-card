//
//  ContentView.swift
//  MyCard
//
//  Created by Dmitriy on 3/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("AccentColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("Me")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Dmitriy Nikulin")
                    .font(Font.custom("Satisfy-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("Junior iOS Developer")
                    .font(Font.system(size: 20).bold())
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+7 (977) 868-82-95", imageName: "phone")
                InfoView(text: "nikdim_03@mail.ru", imageName: "envelope")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
