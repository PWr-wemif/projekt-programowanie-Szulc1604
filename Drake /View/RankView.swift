import SwiftUI
import Foundation

struct RankView: View {
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {
        ZStack{
            Color(red: 49/255, green: 69/255, blue: 0)
                .ignoresSafeArea()
            
            VStack {
                if let stats = dataManager.playerStats {
                    HStack {
                        Text("Wins: \(stats.wins)")
                        Spacer()
                        Text("Guesses: \(stats.guesses)")
                    }
                    
                    Button(action: {
                        dataManager.resetStats()
                    }) {
                        Text("Reset Stats")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(red:145/255, green:116/255, blue:57/255))
                            .cornerRadius(8)
                    }
                } else {
                    Text("No stats available")
                }
            }
            .padding()
            .foregroundColor(.white)
            .offset(y: 50)
            
            Text("Player Stats")
                .font(.title)
                .foregroundColor(.white)
                .padding(.top, 20)
        }
    }
}
