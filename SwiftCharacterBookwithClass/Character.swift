//
//  Character.swift
//  SwiftCharacterBookwithClass
//
//  Created by Aydın Kutlu on 21.03.2024.
//

import Foundation

class Character{
    var characterName : String
    var characterElement : String
    var characterArea : String
    
    init(characterName : String, characterElement : String, characterArea: String){
        self.characterName = characterName
        self.characterElement = characterElement
        self.characterArea = characterArea
    }
}
