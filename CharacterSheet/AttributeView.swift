//
//  AttributeView.swift
//  CharacterSheet
//
//  Created by Christopher Beaudoin on 12/11/20.
//

import SwiftUI
import CoreData

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
