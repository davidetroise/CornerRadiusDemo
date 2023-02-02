//
//  ContentView.swift
//  CornerRadiusDemo
//
//  Created by Davide Troise with Swift 5.0
//  for the YouTube channel "Coding con Davide" https://bit.ly/3QJziJE
//

import SwiftUI

struct ContentView: View {
    
    let maxRadius: CGFloat = 50.0
    
    @State private var topLeft: CGFloat = 0.0
    @State private var topRight: CGFloat = 0.0
    @State private var bottomLeft: CGFloat = 0.0
    @State private var bottomRight: CGFloat = 0.0
    
    var body: some View {
        VStack {
            HStack {
                Text("\(Int(topLeft))")
                Slider(value: $topLeft, in: 0...maxRadius)
                
                Spacer()
                Slider(value: $topRight, in: 0...maxRadius)
                Text("\(Int(topRight))")
            }
            
            Button {
                //
            } label: {
                Text("Rounded button")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .frame(width: max(200, maxRadius * 2), height: maxRadius * 2)
                    .foregroundColor(.white)
                    .background(Color.pink)
                    .cornerRadius(topLeft, corner: .topLeft)
                    .cornerRadius(topRight, corner: .topRight)
                    .cornerRadius(bottomLeft, corner: .bottomLeft)
                    .cornerRadius(bottomRight, corner: .bottomRight)
            }

            
            HStack {
                Text("\(Int(bottomLeft))")
                Slider(value: $bottomLeft, in: 0...maxRadius)
                
                Spacer()
                Slider(value: $bottomRight, in: 0...maxRadius)
                Text("\(Int(bottomRight))")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
