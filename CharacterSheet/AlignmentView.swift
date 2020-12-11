//
//  AlignmentView.swift
//  CharacterSheet
//
//  Created by Christopher Beaudoin on 12/11/20.
//

import SwiftUI

struct AlignmentView: View {
    @State var selectedAlignment: Binding<String>
    @State var selected: String
    var alignments = ["Lawful good", "Neutral good", "Chaotic good", "Lawful neutral", "Neutral", "Chaotic neutral", "Lawful evil", "Neutral evil", "Chaotic evil"]
    
    var body: some View {
        List{
            ForEach(alignments, id: \.self) { align in
                
                Button(action: {
                    selectedAlignment.wrappedValue = align
                    selected=align
                    do {
                        try PersistenceController.shared.container.viewContext.save()
                    } catch {
                        let nsError = error as NSError
                        fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
                    }
                }) {
                    HStack
                    {
                        Text(align)
                        Spacer()
                        if align==selected
                        {
                            Image(systemName: "checkmark")
                        }
                    }
                }
                
            }
        }
        
    }
    
}


