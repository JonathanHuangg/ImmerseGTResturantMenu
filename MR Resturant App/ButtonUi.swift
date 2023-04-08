//
//  ButtonUi.swift
//  MR Resturant App
//
//  Created by Jonathan Huang on 4/8/23.
//

import SwiftUI

struct ButtonUi: View {
    var body: some View {
        Button(action: {
            print("") //This will have to jump to Customer Page
        }) {
            Text("Customer")
                .foregroundColor(Color())
                .font(.largeTitle)
                
        }
    }
}

struct ButtonUi_Previews: PreviewProvider {
    static var previews: some View {
        ButtonUi()
    }
}
