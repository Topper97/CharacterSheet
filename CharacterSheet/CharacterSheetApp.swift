//
//  CharacterSheetApp.swift
//  CharacterSheet
//a9e32e33891f1200210074cc1ab3103f0debbf4c
//  Created by Christopher Beaudoin on 12/3/20.
//

import SwiftUI

@main
struct CharacterSheetApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            CharacterListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
