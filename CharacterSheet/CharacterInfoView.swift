//
//  CharacterInfoView.swift
//  CharacterSheet
//
//  Created by Christopher Beaudoin on 12/11/20.
//

import SwiftUI
import CoreData

struct CharacterInfoView: View {
    @Binding var name: String
    @Binding var playerClass: String
    @Binding var race: String
    @Binding var level: Int64
    @Binding var alignment: String
    
    @State var changed: Bool=false
    
    var editing: Bool
    
    var body: some View {
        VStack (alignment: .leading){
            TextField("Name", text: $name)
                .multilineTextAlignment(.center)
                .padding()
                .font(.largeTitle)
                .disabled(!editing)
            
            HStack {
                Text("Class:")
                    .padding(.leading)
                    .frame(alignment: .leading)
                TextField("Class", text: $playerClass)
                    .multilineTextAlignment(.leading)
                    .disabled(!editing)
                Spacer()
                if editing {
                    Text("Level: \(level)")
                    HStack {
                        Button(action: {
                            changed.toggle()
                            if level > 1 {
                                level -= 1
                            }
                        }) {
                            Image(systemName: "minus")
                                .padding(4)
                        }
                        .frame(minWidth: 40, idealWidth: 40, maxWidth: 40, minHeight: 30, idealHeight: 30, maxHeight: 30, alignment: .center)
                        .background(Color.gray)
                        .cornerRadius(5)
                        Button(action: {
                            changed.toggle()
                            if level < 20 {
                                level += 1
                            }
                        }) {
                            Image(systemName: "plus")
                                .padding(4)
                        }
                        .frame(minWidth: 40, idealWidth: 40, maxWidth: 40, minHeight: 30, idealHeight: 30, maxHeight: 30, alignment: .center)
                        .background(Color.gray)
                        .cornerRadius(5)
                    }
                    .padding(.trailing)
                }
                else{
                    Text("Level: \(level)")
                        .padding(.trailing)
                }
            }
            HStack {
                Text("Race:")
                    .padding(.leading)
                    .frame(alignment: .leading)
                TextField("Race", text: $race)
                    .multilineTextAlignment(.leading)
                    .disabled(!editing)
                
            }
            HStack {
                Text("Alignment:")
                    .padding(.leading)
                    .frame(alignment: .leading)
                
                NavigationLink (destination: AlignmentView(selectedAlignment: $alignment, selected: alignment, changed: $changed))
                {
                    TextField("alignment", text: $alignment)
                        .disabled(true)
                }
                .padding(.trailing)
                
                .disabled(!editing)
                
            }
            Text(changed.description)
                .hidden()
        }
    }
}
