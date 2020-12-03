//
//  ContentView.swift
//  CharacterSheet
//
//  Created by Christopher Beaudoin on 12/3/20.
//

import SwiftUI

struct StatView: View {
    var body: some View {
        HStack() {
            //StrengthView()
            AttributeView(title: "Strength", value: 10)
            AttributeView(title: "Dexterity", value: 20)
            AttributeView(title: "Constitution", value: 14)
            AttributeView(title: "Intelligence", value: 18)
            AttributeView(title: "Wisdom", value: 11)
            AttributeView(title: "Charisma", value: 15)
        }
    }
}

struct AttributeView: View {
    var title: String
    var value: Int
    
    var body: some View {
        GeometryReader { geometry in
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
            
            .frame(width: geometry.size.width / 1, height: 100)
            .border(Color.black)
        }
    }
}

struct AttackView: View {
//    var title: String
//    var value: Int
    
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Text("Some attack")
                    .padding()
                    .border(Color.black)
                Text ("Modfier")
                    .padding()
                    .border(Color.black)
                Text ("Damage/Type")
                    .padding()
                    .border(Color.black)
            }
            
            .frame(width: geometry.size.width, height: 50)
            .border(Color.black)
        }
    }
}
struct ContentView: View {
    @State var name: String = ""
    var body: some View {
        
        VStack () {
            TextField("Character Name", text: $name)
                .multilineTextAlignment(.center)
                .padding()
                .background(Color.black)
                .foregroundColor(.white)
                .font(.largeTitle)
            StatView()
            AttackView()
            .padding()
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
