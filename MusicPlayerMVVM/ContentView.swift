//
//  ContentView.swift
//  MusicPlayerMVVM
//
//  Created by macuser on 2023-09-27.
//

import SwiftUI


struct ContentView: View {
    
    
    var body: some View {
        @ObservedObject var playlist = Playlist()
        VStack{
            Text("Dylan's Music player").font(.title).padding(.bottom,100)
            ScrollView(.horizontal){
                HStack{
                    ForEach(playlist.songs) {
                        song in
                        Button(action: {
                            playlist.setSong(song: song)
                        }, label: {
                            MusicCard(imageName: song.image, title: song.title, artist: song
                                .artist)
                        })
                    }
                }
            }
            Visual(playlist: playlist).padding()

            
        } 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
