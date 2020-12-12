//
//  ValueNameView.swift
//  CharacterSheet
//
//  Created by Christopher Beaudoin on 12/11/20.
//

import SwiftUI
import CoreData

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
