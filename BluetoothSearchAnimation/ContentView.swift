//
//  ContentView.swift
//  BluetoothSearchAnimation
//
//  Created by Alexander Römer on 10.02.20.
//  Copyright © 2020 Alexander Römer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showOuterWave = false
    @State private var showMiddleWave = false
    @State private var showInnerOuterWave = false

    
    var body: some View {
        ZStack {
            
//            RadialGradient(gradient: .init(colors: [Color.black, Color.black]), center: .center, startRadius: 5, endRadius: 300)
            
            //Outer Wave
            Circle()
                .stroke()
                .frame(width: 120, height: 120)
                .foregroundColor(Color.init(.systemGray6))
                .scaleEffect(showOuterWave ? 3 : 1)
                .opacity(showOuterWave ? 0.5 : 1)
                .animation(Animation.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: false).delay(2))
                .onAppear() {
                    self.showOuterWave.toggle()
                }
            
            
            //Middle Wave
            Circle()
                .stroke()
                .frame(width: 120, height: 120)
                .foregroundColor(Color.init(.systemGray6))
                .scaleEffect(showMiddleWave ? 2.75 : 1)
                .opacity(showMiddleWave ? 0.5 : 1)
                .animation(Animation.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: false).delay(2.2))
                .onAppear() {
                    self.showMiddleWave.toggle()
                }
            
            //InnerOuter Wave
            Circle()
                .stroke()
                .frame(width: 120, height: 120)
                .foregroundColor(Color.init(.systemGray6))
                .scaleEffect(showInnerOuterWave ? 2.5 : 1)
                .opacity(showInnerOuterWave ? 0.5 : 1)
                .animation(Animation.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: false).delay(2.4))
                .onAppear() {
                    self.showInnerOuterWave.toggle()
                }
            
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(Color.init(.systemGray6))
            
            Circle()
                .frame(width: 120, height: 120)
                .foregroundColor(Color.init(.systemGray5))
            
            Image(systemName: "wifi.exclamationmark")
                .font(.largeTitle)
            
        }
//        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
