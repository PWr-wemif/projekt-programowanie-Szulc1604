import Foundation


public struct Track: Codable {
    let name, album, length: String
    let feat: String
    let number: Int
    
    static let allTracks: [Track] = Bundle.main.decode(file: "Tracks.json")
    static let sampleTracks: Track = allTracks[0]
}

extension Bundle{
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Could not find \(file) in the project")
        }
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Could not load \(file) in the project")
        }
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else{
            fatalError("Could not decode \(file) in the project")
        }
        
        return loadedData
    }
    
    
}
