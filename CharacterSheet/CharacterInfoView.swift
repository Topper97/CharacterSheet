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
                //                Text("Level:")
                //                    .padding(.leading)
                //                    .frame(alignment: .trailing)
                Text("Level: \(level)")
                Stepper("", value: $level, in: 0...20)
                    .padding(.trailing)
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
                    
                NavigationLink (destination: AlignmentView(selectedAlignment: $alignment, selected: alignment))
                    {
                    TextField("alignment", text: $alignment)
                        .disabled(true)
                }
                .padding(.trailing)
                
                .disabled(!editing)

            }
        }
    }
}
