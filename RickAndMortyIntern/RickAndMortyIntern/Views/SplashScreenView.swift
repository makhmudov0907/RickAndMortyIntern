//
//  SplashScreenView.swift
//  RickAndMortyIntern
//
//  Created by Mirshod Makhmudov on 17/08/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            CharactersView()
        } else {
            ZStack {
//                Color(UIColor(named: "cardColor")!)
//                    .ignoresSafeArea()
                Image("bg")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.9)
                VStack {
                    Image("2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 170)
                        .padding(.bottom, 10)
                        .opacity(1)
                    Image("Frame")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 170)
                        .padding(.bottom, 30)
                        .opacity(1)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 1.2
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
 
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
