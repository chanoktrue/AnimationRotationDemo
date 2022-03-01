//
//  ContentView.swift
//  AnimationRotationDemo
//
//  Created by Thongchai Subsaidee on 1/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "gear")
                .font(.system(size: 100))
                .foregroundColor(.gray)
                .rotationEffect(Angle.degrees(isAnimating ? 360 : 0))
                .animation(Animation.linear(duration: 5).repeatForever(autoreverses: false), value: isAnimating)
                .onAppear {
                    isAnimating = true
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
