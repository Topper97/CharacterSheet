//
//  ContentView.swift
//  CharacterSheet
//
//  Created by Christopher Beaudoin on 12/3/20.
//

import SwiftUI

struct CharacterInfoView: View {
    @State var name: String = ""
    var body: some View {
        VStack (alignment: .leading){
            TextField("Character Name", text: $name)
                .multilineTextAlignment(.center)
                .padding()
                .font(.largeTitle)
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
        .background(Color.white)
        .foregroundColor(.black)

    }
    
}

struct StatView: View {
    var body: some View {
        HStack() {
            AttributeView(title: "Strength", value: 10)
            AttributeView(title: "Dexterity", value: 20)
            AttributeView(title: "Constitution", value: 14)
            AttributeView(title: "Intelligence", value: 18)
            AttributeView(title: "Wisdom", value: 11)
            AttributeView(title: "Charisma", value: 15)
        }
        .padding(.horizontal)
    }
}

struct AttributeView: View {
    var title: String
    var value: Int
    
    var body: some View {
        VStack {
                Text(((value - 10)/2).description)
                    //.padding()
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
                Text(value.description)
                    .font(.title)
            Text(title)
                .scaledToFit()
                .minimumScaleFactor(0.01)
            }
        
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            .border(Color.black)
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

            .border(Color.black)
        //}
    }
}
struct ContentView: View {
    
    var body: some View {
        
        VStack () {
            CharacterInfoView()
            Spacer()
                .frame(height:5)
            StatView()
            AttackView(title: "Dagger", diceNum: 1, diceSide: 4, damage: "Piercing")
                .padding(.top)
            
            Spacer()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack () {
            ContentView()
        }
    }
}
