import CoreData
import Foundation

class DataManager: NSObject, ObservableObject {
    @Published var playerStats: Stats?
    var wins: Int = 0
    var guesses: Int = 0
    
    let container: NSPersistentContainer
    
    override init() {
        container = NSPersistentContainer(name: "DataModel")
        container.loadPersistentStores { _, error in
            if let error = error {
                fatalError("Error loading Core Data container: \(error)")
            }
        }
        super.init()
        fetchPlayerStats()
    }
    
    func fetchPlayerStats() {
        let request: NSFetchRequest<Stats> = Stats.fetchRequest()
        do {
            if let stats = try container.viewContext.fetch(request).first {
                playerStats = stats
            } else {
                playerStats = Stats(context: container.viewContext)
                try container.viewContext.save()
            }
        } catch {
            print("Error fetching player stats: \(error)")
        }
    }
    
    func saveContext() {
        if container.viewContext.hasChanges {
            do {
                try container.viewContext.save()
            } catch {
                print("Error saving context: \(error)")
            }
        }
    }
    
    func updateStats() {
        guard let stats = playerStats else { return }
        stats.wins += Int64(wins)
        stats.guesses += Int64(guesses)
        
        saveContext()
    }
    
    func resetStats() {
            guard let stats = playerStats else { return }
            stats.wins = 0
            stats.guesses = 0
            
            saveContext()
        }
    
    func increaseWins() {
        guard let stats = playerStats else { return }
        wins += 1
        stats.wins = Int64(wins)
        saveContext()
    }

    func increaseGuesses() {
        guard let stats = playerStats else { return }
        guesses += 1
        stats.guesses = Int64(guesses)
        saveContext()
    }
}
