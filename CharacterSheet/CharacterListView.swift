//
//  CharacterListView.swift
//  CharacterSheet
//
//  Created by Christopher Beaudoin on 12/4/20.
//

import SwiftUI
import CoreData

struct CharacterListView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \PlayerCharacter.pName, ascending: true)],
            animation: .default)
    private var characters: FetchedResults<PlayerCharacter>
    var body: some View {
        List{
            ForEach(characters) {player in
                Text(player.pName)
            }
        }
        .toolbar {
            Button(action: addCharacter) {
                Label("Add Item", systemImage: "plus")
            }
        }
    }
    
    private func addCharacter()
    {
        withAnimation {
            let newChar = PlayerCharacter(context: viewContext)
            newChar.pName = "Joe"
            
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
        
        
    }
}

struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView()
    }
}
