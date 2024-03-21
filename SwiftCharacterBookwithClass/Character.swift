//
//  Character.swift
//  SwiftCharacterBookwithClass
//
//  Created by Aydın Kutlu on 21.03.2024.
//

import Foundation
import UIKit

class Character{
    var characterName : String
    var characterElement : String
    var characterArea : String
    var image : UIImage
    
    init(characterName : String, characterElement : String, characterArea: String, image : UIImage){
        self.characterName = characterName
        self.characterElement = characterElement
        self.characterArea = characterArea
        self.image = image
    }
}
