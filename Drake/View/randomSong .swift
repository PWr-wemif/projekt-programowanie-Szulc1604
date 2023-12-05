import Foundation
import SwiftUI


public func chooseRandomSong() -> Track?{
    if let url = Bundle.main.url(forResource: "Tracks", withExtension: "json") {
        do {
            let data = try Data(contentsOf: url)
            let songs = try JSONDecoder().decode([Track].self, from: data)
            let randomIndex = Int.random(in: 0..<songs.count)
            return songs[randomIndex]
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    }
    return nil
}

