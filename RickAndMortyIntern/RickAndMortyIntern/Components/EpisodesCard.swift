//
//  EpisodesCard.swift
//  RickAndMortyIntern
//
//  Created by Mirshod Makhmudov on 18/08/23.
//

import SwiftUI

struct EpisodesCard: View {
    var episode: Episodes
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(episode.episodeName)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(.bottom, 12)
                HStack {
                    Text("Episode: \(episode.episodeCount), Season: \(episode.seasonCount)")
                        .font(.body)
                        .foregroundColor(.green)
                    Spacer()
                    Text(episode.date)
                        .font(.body)
                        .foregroundColor(.gray)
                }
            }
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color("bgColor").opacity(0.8))
        .foregroundColor(.white)
        .background(in: RoundedRectangle(cornerRadius: 15))
        .padding()
    }
}

struct EpisodesCard_Previews: PreviewProvider {
    static var previews: some View {
        EpisodesCard(episode: episodesList[0])
    }
}
