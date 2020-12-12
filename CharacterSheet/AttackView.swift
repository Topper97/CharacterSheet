//
//  AttackView.swift
//  CharacterSheet
//
//  Created by Christopher Beaudoin on 12/11/20.
//

import SwiftUI
import CoreData

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
