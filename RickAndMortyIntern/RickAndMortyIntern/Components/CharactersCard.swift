//
//  CharactersCard.swift
//  RickAndMortyIntern
//
//  Created by Mirshod Makhmudov on 17/08/23.
//

import SwiftUI

struct CharactersCard: View {
    var character: Character
    
    var body: some View {
            VStack(alignment: .center) {
                Image(character.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 140, height: 140)
                    .scaledToFit()
                
                Text(character.name)
                    .font(.headline)
                    .foregroundColor(.white)
                    
            }
            .padding()
            .frame(width: 156, height: 202)
            .background(Color(UIColor(named: "cardColor")!))
            .cornerRadius(20)
            .shadow(radius: 3)
        
    }
}

struct CharactersCard_Previews: PreviewProvider {
    static var previews: some View {
        CharactersCard(character: characterList[0])
    }
}
