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
    @Binding var changed: Bool
    var alignments = ["Lawful good", "Neutral good", "Chaotic good", "Lawful neutral", "Neutral", "Chaotic neutral", "Lawful evil", "Neutral evil", "Chaotic evil"]
    
    var body: some View {
        List{
            ForEach(alignments, id: \.self) { align in
                
                Button(action: {
                    selectedAlignment.wrappedValue = align
                    selected=align
                    changed.toggle()
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


