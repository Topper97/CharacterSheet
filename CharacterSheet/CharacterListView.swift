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
    
    @FetchRequest( entity: PlayerCharacter.entity(),
        sortDescriptors: [NSSortDescriptor(keyPath: \PlayerCharacter.pName, ascending: true)],
            animation: .default)
    private var characters: FetchedResults<PlayerCharacter>
    var body: some View {
        NavigationView {
            List{
                ForEach(characters) { (player: PlayerCharacter) in
                    NavigationLink(destination: ContentView(char: player)){
                        Text(player.pName ?? "")
                    }
                    .environment(\.managedObjectContext, viewContext)
                }
                .onDelete(perform: deleteItems)
            }
            .navigationBarTitle("Characters", displayMode: .automatic)
            .toolbar {
                Button(action: addCharacter) {
                    Label("Add Item", systemImage: "plus")
                }
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
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { characters[$0] }.forEach(viewContext.delete)
            
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
