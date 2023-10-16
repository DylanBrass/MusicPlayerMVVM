
import SwiftUI

struct MusicCard: View  {
    
    //@StateObject var viewModel = SongDisplayViewModel()
    var imageName: String
    var title: String
    var artist: String
    
    var body: some View {
    
        ZStack(alignment:.topLeading){
            VStack(alignment:.leading){
                Text("Title : \(title)")
                    .foregroundColor(Color.white)
                    .font(.title2)
                Text("Artist : \(artist)")
                    .foregroundColor(Color.white)
                    .font(.caption)
                
            }
            
            Image(imageName)
                .resizable()
                .cornerRadius(10)
                .frame(width: 260,height: 260)
                .zIndex(-1)

        }
                
    }
}

