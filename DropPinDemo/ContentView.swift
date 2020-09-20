//
//  ContentView.swift
//  DropPinDemo
//
//  Created by Dimitar Chakarov on 19/09/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                DropPin()
                    .frame(width: 120, height: 180, alignment: .center)
                    .foregroundColor(.black)
                    .shadow(radius: 2, x: 2, y: 2)
                Image("Halloween")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Circle())
            }
            
            Image("Halloween")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 180, alignment: .center)
                .clipShape(DropPin())
                .shadow(radius: 2, x: 2, y: 2)

            ZStack {
                DropPin()
                    .frame(width: 120, height: 180, alignment: .center)
                    .foregroundColor(.orange)
                    .shadow(radius: 2, x: 2, y: 2)
                Image("Halloween")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .clipShape(Circle())
                    .shadow(radius: 2, x: 2, y: 2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
