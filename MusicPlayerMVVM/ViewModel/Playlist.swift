

import AVFoundation
import SwiftUI

enum FileNotFoundError: Error{
    case fileNotFound
}

class Playlist: ObservableObject {
    
   
    
    @Published
    var songs : [Song] = [
        Song(title: "Evil Woman", artist: "Electric Light Orchestra", image: "FaceTheMusic", type: "Rock", id: "1", url: "EvilWoman", ext: "mp3"),
        Song(title: "All Over The World", artist: "Electric Light Orchestra", image: "GreatestHitsELO", type: "Rock", id: "2", url: "AllOverTheWorld", ext: "mp3"),
        Song(title: "Old Days", artist: "Chicago", image: "ChicagoVIII", type: "c", id: "3", url: "OldDays", ext: "mp3"),
        Song(title: "Leave It", artist: "Yes", image: "90125", type: "Rock", id: "4", url: "LeaveIt", ext: "mp3"),
        Song(title: "Generals And Majors", artist: "Xtc", image: "BlackSea", type: "d", id: "5", url: "GeneralAndMajors", ext: "mp3"),
        Song(title: "Jailbreak", artist: "Thin Lizzy", image: "StudioAlbum", type: "Rock", id: "6", url: "Jailbreak", ext: "mp3")
    ]
    
    @Published
    var currentSong:Song? = Song(title: "Evil Woman", artist: "Electric Light Orchestra", image: "FaceTheMusic", type: "Rock", id: "1", url: "EvilWoman", ext: "mp3")
    
    func setSong(song:Song){
        currentSong = song
        play()
    }
    
    var audioPlayer : AVAudioPlayer!
    
    func play() {

        
        if let audioUrl = Bundle.main.url(forResource: self.currentSong?.url, withExtension: self.currentSong?.ext) {

               do {
                   audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
                   audioPlayer?.play()
               } catch {

                   print("Error playing audio: \(error.localizedDescription)")

               }

           }

       }
    
    func playButton(){
        audioPlayer.play()
    }
    
    func pause(){
        if (audioPlayer.isPlaying){
            audioPlayer?.pause()
        }else{
            audioPlayer?.play()
        }
       
    }
    
    func stop(){
        audioPlayer?.stop()
        self.currentSong = nil
        audioPlayer = nil
        
    }
}
