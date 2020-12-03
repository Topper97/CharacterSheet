//
//  ContentView.swift
//  CharacterSheet
//
//  Created by Christopher Beaudoin on 12/3/20.
//

import SwiftUI

struct StrengthView: View {
    var body: some View {
        VStack {
            Text("2")
                //.padding()
                .foregroundColor(.black)
                .font(.largeTitle)
                .bold()
            Text("14")
                .font(.title)
            Text("Strength")
                .scaledToFit()
                .minimumScaleFactor(0.01)
                
        }
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    }
}
struct DexterityView: View {
    var body: some View {
        VStack {
            Text("5")
                //.padding()
                .foregroundColor(.black)
                .font(.largeTitle)
                .bold()
            
            Text("20")
                .font(.title)
            Text("Dexterity")
                .scaledToFit()
                .minimumScaleFactor(0.01)
        }
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    }
}
struct ConstitutionView: View {
    var body: some View {
        VStack {
            Text("2")
                //.padding()
                .foregroundColor(.black)
                .font(.largeTitle)
                .bold()
            Text("14")
                .font(.title)
            Text("Constitution")
                .scaledToFit()
                .minimumScaleFactor(0.01)
        }
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    }
}
struct IntelligenceView: View {
    var body: some View {
        VStack {
            Text("3")
                //.padding()
                .foregroundColor(.black)
                .font(.largeTitle)
                .bold()
            Text("16")
                .font(.title)
            Text("Intelligence")
                .scaledToFit()
                .minimumScaleFactor(0.01)
        }
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    }
}
struct WisdomView: View {
    var body: some View {
        VStack {
            Text("1")
                //.padding()
                .foregroundColor(.black)
                .font(.largeTitle)
                .bold()
            Text("13")
                .font(.title)
            Text("Wisdom")
                .scaledToFit()
                .minimumScaleFactor(0.01)
        }
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    }
}
struct CharismaView: View {
    var body: some View {
        VStack {
            Text("0")
                //.padding()
                .foregroundColor(.black)
                .font(.largeTitle)
                .bold()
            Text("10")
                .font(.title)
            Text("Charisma")
                .scaledToFit()
                .minimumScaleFactor(0.01)
                
        }
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    }
}
struct ContentView: View {
    var body: some View {
        
        VStack () {
            HStack(alignment: .firstTextBaseline) {
                StrengthView()
                DexterityView()
                ConstitutionView()
                IntelligenceView()
                WisdomView()
                CharismaView()
            }
            
        
            Text("Character sheet")
            .padding()
            .foregroundColor(.red)
            .font(.largeTitle)
            
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
