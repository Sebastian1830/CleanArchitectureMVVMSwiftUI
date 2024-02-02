//
//  CleanArchitectureMvvmApp.swift
//  CleanArchitectureMvvm
//
//  Created by Sebastian Soto Varas on 19/01/24.
//

import SwiftUI
import Data
import SwiftData

@main
struct CleanArchitectureMvvmApp: App {
    let marvelNetwork = NetworkingFactory.setupNetworkingLayer()
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            CharacterFinderFactory.create(client: marvelNetwork)
        }
        .modelContainer(sharedModelContainer)
    }
    
    
}
