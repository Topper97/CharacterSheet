//
//  ContentView.swift
//  CharacterSheet
//
//  Created by Christopher Beaudoin on 12/3/20.
//

import SwiftUI
import CoreData

struct CharacterInfoView: View {
    @State var name: String
    
    var body: some View {
        VStack (alignment: .leading){
            //            TextField("Character Name", text: $name)
            //                .multilineTextAlignment(.center)
            //                .padding()
            //                .font(.largeTitle)
            Text(name)
                .multilineTextAlignment(.center)
                .padding()
                .font(.largeTitle)
                .frame(alignment: .center)
            HStack {
                Text("Class:")
                    .padding(.leading)
                    .frame(alignment: .leading)
                Text("Druid")
                Spacer()
                Text("Level:")
                    .padding(.leading)
                    .frame(alignment: .trailing)
                Text("1")
                    .padding(.trailing)
            }
            HStack {
                Text("Race:")
                    .padding(.leading)
                    .frame(alignment: .leading)
                Text("Elf")
                Spacer()
                Text("Alignment:")
                    .padding(.leading)
                    .frame(alignment: .trailing)
                Text("Lawful Good")
                    .padding(.trailing)
            }
        }
    }
}

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

struct AttributeView: View {
    var title: String
    var value: Int
    
    var body: some View {
        VStack {
            Text(((value - 10)/2).description)
                //.padding()
                .foregroundColor(Color.init(.label))
                .font(.largeTitle)
                .bold()
            Text(value.description)
                .font(.title)
            Text(title)
                .scaledToFit()
                .minimumScaleFactor(0.01)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
        .border(Color.init(.label))
        //}
    }
}

struct AttackView: View {
    var title: String
    var diceNum: Int
    var diceSide: Int
    var damage: String
    
    var body: some View {
        HStack {
            Text(title)
                .padding(.leading)
            //.border(Color.black)
            Text ("Modfier")
                .padding(.horizontal)
            //.border(Color.black)
            Text (diceNum.description + "d" + diceSide.description + " " + damage)
                .padding(.trailing)
            //.border(Color.black)
        }
        .border(Color.init(.label))
        //}
    }
}

struct ValueNameView: View {
    var value: Int
    var name: String
    var body: some View {
        VStack {
            Text(value.description)
                .font(.largeTitle)
                .bold()
            Text(name.description)
                .scaledToFit()
                .minimumScaleFactor(0.01)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
        .border(Color.init(.label))
        
        
    }
}


struct ContentView: View {
    
    var char: PlayerCharacter
    
    var body: some View {
        ScrollView {
            VStack  {
                CharacterInfoView(name: char.pName ?? "Character Name")
                Spacer()
                    .frame(height:5)
                StatView()
                AttackView(title: "Dagger", diceNum: 1, diceSide: 4, damage: "Piercing")
                    .padding(.top)
                Spacer()
            }
            .background(Color.init(.systemBackground))
            .foregroundColor(Color.init(.label))
            .navigationBarTitle(char.pName ?? "", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: editChar) {
                        Text("Edit")
                    }
                }
                
            }
            Spacer()
        }
    }
    
    private func editChar()
    {
        print("Edit")
    }
}
