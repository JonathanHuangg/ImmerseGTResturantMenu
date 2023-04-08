//
//  ContentView.swift
//  MR Resturant App
//
//  Created by Jonathan Huang on 4/8/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .trailing) {
            Text("I am a:")
            .font(.largeTitle)
            .fontWeight(.semibold)
            
            CustomerButtonUi()
            
            ResturantOwnerUiButton()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
