
import AVKit
import SwiftUI

struct Visual: View {
    
    @State var playlist:Playlist
    
    
var body: some View {
    VStack {
        HStack{
            
           Button(action: {
               playlist.playButton()
            }, label: {
                Image(systemName:"play.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.gray)
            })
            
            
            Button(action:{
                playlist.pause()
            }, label: {
                Image(systemName: "pause.circle")
                    .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio( contentMode: .fit)
                .foregroundColor(.gray)
            })
            
            Button(action:{
                playlist.stop()
            }, label: {
                Image(systemName: "eject.circle")
                    .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio( contentMode: .fit)
                .foregroundColor(.gray)
            })
            
        
        }
    
    }
    
}
}


