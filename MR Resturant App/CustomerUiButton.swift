//
//  ButtonUi.swift
//  MR Resturant App
//
//  Created by Jonathan Huang on 4/8/23.
//

import SwiftUI

struct CustomerButtonUi: View {
    var body: some View {
        Button(action: {
            print("") //This will have to jump to Customer Page
        }) {
            Text("Customer")
                .foregroundColor(.RoseQuartz)
                .font(.largeTitle)
                .padding()
                .border(Color.purple, width: 5)
        }
    }
}

struct ButtonUi_Previews: PreviewProvider {
    static var previews: some View {
        CustomerButtonUi()
    }
}
