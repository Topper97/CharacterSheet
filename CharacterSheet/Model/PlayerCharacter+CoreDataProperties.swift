//
//  PlayerCharacter+CoreDataProperties.swift
//  CharacterSheet
//
//  Created by Christopher Beaudoin on 12/11/20.
//
//

import Foundation
import CoreData


extension PlayerCharacter {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlayerCharacter> {
        return NSFetchRequest<PlayerCharacter>(entityName: "PlayerCharacter")
    }

    @NSManaged public var alignment: String
    @NSManaged public var armorClass: Int64
    @NSManaged public var cClass: String
    @NSManaged public var charisma: Int64
    @NSManaged public var consititution: Int64
    @NSManaged public var dexterity: Int64
    @NSManaged public var initiative: Int64
    @NSManaged public var intelligence: Int64
    @NSManaged public var level: Int64
    @NSManaged public var pName: String
    @NSManaged public var proficency: Int64
    @NSManaged public var race: String
    @NSManaged public var speed: Int64
    @NSManaged public var strength: Int64
    @NSManaged public var wisdom: Int64

}

extension PlayerCharacter : Identifiable {

}
