//
//  ContentView.swift
//  InstaFilter
//
//  Created by Chris Viarengo on 6/24/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var image: Image?
    @State private var inputImage: UIImage?
    @State private var showingImagePicker = false
    
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
            
            Button("Select Image") {
                showingImagePicker = true
        }
    }
        .sheet(isPresented: $showingImagePicker) {
            imagePicker(image: $inputImage)
        }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
