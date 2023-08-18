//
//  ContentView.swift
//  RickAndMortyIntern
//
//  Created by Mirshod Makhmudov on 17/08/23.
//

import SwiftUI

struct CharactersView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(characterList, id: \.id) { person in
                        NavigationLink(destination: DetailCharacters(character: person)) {
                            CharactersCard(character: person)
                        }
                    }
                }
                .padding()
            }
            .background(Color(UIColor(named: "bgColor")!))
//            .navigationTitle("Characters")
            .navigationBarItems(leading: VStack(alignment: .trailing) {
                Text("Characters")
                    .font(.title)
                    .bold()
                    .foregroundColor(.cyan)
            })
        }
    }
}

struct CharactersView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}


//NavigationView {
//    NavigationLink(destination: DetailCharacters(character: characterList[0])) {
//        ScrollView {
//            LazyVGrid(columns: columns) {
//                ForEach(characterList, id: \.id) { character in
//                    CharactersCard(character: character)
//                }
//            }
//            .padding()
//        }
//        .background(Color(UIColor(named: "bgColor")!))
//    }
////            .navigationTitle("Characters")
//    .navigationBarItems(leading: VStack(alignment: .trailing) {
//        Text("Characters")
//            .font(.title)
//            .bold()
//            .foregroundColor(.cyan)
//    })
//}
