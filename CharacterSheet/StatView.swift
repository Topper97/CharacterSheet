//
//  StatView.swift
//  CharacterSheet
//
//  Created by Christopher Beaudoin on 12/11/20.
//

import SwiftUI
import CoreData

struct StatView: View {
    var body: some View {
        VStack {
            HStack() {
                AttributeView(title: "Strength", value: 10)
                AttributeView(title: "Dexterity", value: 20)
                AttributeView(title: "Constitution", value: 14)
                AttributeView(title: "Intelligence", value: 18)
                AttributeView(title: "Wisdom", value: 11)
                AttributeView(title: "Charisma", value: 15)
            }
            .padding(.horizontal)
            HStack() {
                ValueNameView(value:20, name:"Armor Class")
                ValueNameView(value:2, name:"Initiative")
                ValueNameView(value:30, name:"Speed")
            }
            .padding([.top, .leading, .trailing])
            HStack() {
                ValueNameView(value:40, name:"Health Points")
                VStack (){
                    ValueNameView(value:0, name:"Temp Health Points")
                    ValueNameView(value:4, name:"Hit Die")
                }
                
            }
            .padding([.top, .leading, .trailing])
        }
    }
}
