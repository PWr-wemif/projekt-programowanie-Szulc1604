import Foundation
import SwiftUI

struct SecondView: View {
    @State var selectedSongs: [Track] = []
    @State var searchText: String = ""
    @State var song: [Track] = Track.allTracks
    @State var randomSong: Track? = nil
    @State var showButton: Bool = true
    
    
    var filteredSuggestions: [Track] {
        if searchText.isEmpty {
            return []
        } else {
            let filtered = song.filter { $0.name.lowercased().contains(searchText.lowercased()) }
            return Array(filtered.prefix(5))
        }
    }
    
    var body: some View {
        ZStack {
            Color(red: 49/255, green: 69/255, blue: 0)
                .ignoresSafeArea()
            
               
            
            VStack(spacing: 10) {
                TextField("Search", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                if showButton{
                    Button(action: {
                        self.randomSong = chooseRandomSong()
                        self.showButton = false
                    }) {
                        Text("Generate Random Song")
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                    }
                    .background(Color.black)
                    .cornerRadius(8)
                    .padding()
                }
                
                
                if let song = randomSong{
                    Text(song.name)
                }
                
            ScrollView {
                if !filteredSuggestions.isEmpty {
                    VStack(spacing: 15) {
                        ForEach(filteredSuggestions, id: \.name) { suggestion in
                            Button(action: {
                                if selectedSongs.count < 8 {
                                    if !selectedSongs.contains(where: { $0.name == suggestion.name }) {
                                            selectedSongs.append(suggestion)
                                            searchText = ""
                                    }
                                }


                            }) {
                                Text(suggestion.name)
                                    .foregroundColor(.black)
                                    .font(.custom("Helvetica-Bold", size: 15))
                                    .padding(.vertical, 8)
                            }
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.horizontal)
                        }
                    }
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
                }
                    
                if selectedSongs.count == 8 {
                    VStack{
                        Text("You Lost")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                        .padding(.bottom, 5)
                        
                        Button(action: {
                            selectedSongs = []
                        }) {
                            Text("Clean and Start Over")
                                .foregroundColor(.white)
                                .padding(.vertical,8)
                        }
                        .background(Color.blue)
                        .cornerRadius(8)
                        .padding()
                    }
                }
                if let randomSong = randomSong, selectedSongs.contains(where: { $0.name == randomSong.name }) {
                    VStack{
                        Text("You Won")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                        .padding(.bottom, 5)
                                
                            Button(action: {
                                selectedSongs = []
                                self.showButton = true
                            }) {
                                Text("Clean and Play Again")
                                    .foregroundColor(.white)
                                    .padding(.vertical,8)
                            }
                            .background(Color.blue)
                            .cornerRadius(8)
                            .padding()
                        }
                        
                        
                }
                    
                ScrollView {
                    LazyVStack(alignment: .leading, spacing: 0) {
                        Text("Songs you selected:")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.top, 10)
                            .padding(.bottom, 5)
                            
                        ForEach(selectedSongs, id: \.name) { selectedSong in
                            HStack {
                                Text(selectedSong.name)
                                    .foregroundColor(TrackStyle.albumColor2(selectedSong.album))
                                Spacer()
                                Text(selectedSong.album)
                                    .foregroundColor(TrackStyle.albumColor2(selectedSong.album))
                                Spacer()
                                Text(selectedSong.length)
                                    .foregroundColor(TrackStyle.albumColor2(selectedSong.album))
                                Spacer()
                                Text("\(selectedSong.number)")
                                    .foregroundColor(TrackStyle.albumColor2(selectedSong.album))
                                Spacer()
                                Text(selectedSong.feat)
                                    .foregroundColor(TrackStyle.albumColor2(selectedSong.album))
                            }
                            .padding(12)
                            .background(TrackStyle.albumColor(selectedSong.album))
                            .cornerRadius(8)
                
                        }
                    }
                    .padding(.horizontal)
                }
            }
                
            Spacer()
        }
    }
}
}

#Preview{
    SecondView()
}
