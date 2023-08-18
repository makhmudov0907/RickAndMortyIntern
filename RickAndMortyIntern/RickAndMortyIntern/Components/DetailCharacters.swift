//
//  DetailCharactersView.swift
//  RickAndMortyIntern
//
//  Created by Mirshod Makhmudov on 17/08/23.
//

import SwiftUI

struct DetailCharacters: View {
    var character: Character
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Group {
                    Image(character.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 148, height: 148)
                    Text(character.name)
                        .font(.system(size: 25, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    Text("Alive")
                        .font(.system(size: 18))
                        .foregroundColor(.green)
                }
            }
            .padding()
            
            // info
            HStack {
                Text("Info")
                    .font(.title)
                Spacer()
            }
            .foregroundColor(.white)
            .padding(.leading)
            VStack(alignment: .leading) {
                HStack {
                    Text("Species:")
                        .font(.title2)
                        .foregroundColor(.gray)
                    Spacer()
                    Text(character.species)
                        .font(.title2)
                        .foregroundColor(.white)
                }
                HStack {
                    Text("Type:")
                        .font(.title2)
                        .foregroundColor(.gray)
                    Spacer()
                    Text(character.type)
                        .font(.title2)
                        .foregroundColor(.white)
                }
                .padding(.top, 5)
                HStack {
                    Text("Gender:")
                        .font(.title2)
                        .foregroundColor(.gray)
                    Spacer()
                    Text(character.gender)
                        .font(.title2)
                        .foregroundColor(.white)
                }
                .padding(.top, 5)
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color("bgColor").opacity(0.8))
            .foregroundColor(.white)
            .background(in: RoundedRectangle(cornerRadius: 15))
            .padding()
            
            // origin
            HStack {
                Text("Origin")
                    .font(.title)
                Spacer()
            }
            .foregroundColor(.white)
            .padding(.leading)
            HStack {
                Image("earth")
                    .padding()
                    .frame(maxWidth: 100, minHeight: 100)
                    .background(Color("bgColor").opacity(0.9))
                    .background(in: RoundedRectangle(cornerRadius: 15))
                VStack(alignment: .leading) {
                    Text(character.planet)
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding(.bottom, 1.5)
                    Text("Planet")
                        .font(.system(size: 18))
                        .foregroundColor(.green)
                }
                .padding()
                Spacer()
                
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color("bgColor").opacity(0.8))
            .foregroundColor(.white)
            .background(in: RoundedRectangle(cornerRadius: 15))
            .padding()
            
            //episodes
            HStack {
                Text("Episodes")
                    .font(.title)
                Spacer()
            }
            .foregroundColor(.white)
            .padding(.leading)
            
            
            ForEach(episodesList, id: \.id) { episode in
                EpisodesCard(episode: episode)
            }
            
            
            
        }
        .background(Color("bgColor").opacity(0.9))
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.white)
                }
            }
        }
            
    }
}

struct DetailCharacters_Previews: PreviewProvider {
    static var previews: some View {
        DetailCharacters(character: characterList[0])
    }
}
