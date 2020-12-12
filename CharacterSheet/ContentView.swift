//
//  ContentView.swift
//  CharacterSheet
//
//  Created by Christopher Beaudoin on 12/3/20.
//
import SwiftUI
import CoreData


struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var char: PlayerCharacter
    @State private var editing = false   //When True editing disabled
    
    var body: some View {
        ScrollView {
            VStack  {
                CharacterInfoView(name: $char.pName, playerClass: $char.cClass, race: $char.race, level: $char.level, alignment: $char.alignment, editing: editing)
                Spacer()
                    .frame(height:5)
                StatView()
                AttackView(title: "Dagger", diceNum: 1, diceSide: 4, damage: "Piercing")
                    .padding(.top)
                Spacer()
            }
            .background(Color.init(.systemBackground))
            .foregroundColor(Color.init(.label))
            .navigationBarTitle(char.pName, displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    if editing {
                        Button(action: {
                            editing.toggle()
                            saveChar()
                        }) {
                            Text("Save")
                        }
                    } else {
                        Button(action: {
                            editing.toggle()
                        }) {
                            Text("Edit")
                        }
                    }
                }
            }
            Spacer()
        }
    }
    
    
    
    private func saveChar()
       {
           do {
               try viewContext.save()
           } catch {
               let nsError = error as NSError
               fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
           }
       }
}
