//
//  ButtonUi.swift
//  MR Resturant App
//
//  Created by Jonathan Huang on 4/8/23.
//

import SwiftUI
struct ResturantOwnerUiButton: View {
    var body: some View {
        Button(action: {
            print("") //This will have to jump to Customer Page
        }) {
            Text("Resturant Owner")
                .foregroundColor(.purple)
                .font(.largeTitle)
                .padding()
                .border(.purple, width: 5)
        }
    }
}

struct ResturantOwnerUiButton_Previews: PreviewProvider {
    static var previews: some View {
        ResturantOwnerUiButton()
    }
}
