//
//  DrakeApp.swift
//  Drake
//
//  Created by Mikołaj Szulc on 18/10/2023.
//

import SwiftUI

@main
struct DrakeApp: App {
    @Environment(\.scenePhase) private var scenePhase
    let dataManager = DataManager()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataManager)
                .onChange(of: scenePhase) { newPhase in
                    switch newPhase {
                    case .background, .inactive:
                        dataManager.saveContext()
                    default:
                        break
                    }
                }
        }
        .onChange(of: scenePhase) { newPhase in
            switch newPhase {
            case .background, .inactive:
                dataManager.saveContext()
            default:
                break
            }
        }
    }
}
