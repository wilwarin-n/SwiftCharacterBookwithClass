//
//  DetailsViewController.swift
//  SwiftCharacterBookwithClass
//
//  Created by Aydın Kutlu on 21.03.2024.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var arealabel: UILabel!
    @IBOutlet weak var elementlabel: UILabel!
    @IBOutlet weak var namelabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedCharacter : Character?
    override func viewDidLoad() {
        super.viewDidLoad()

        namelabel.text = selectedCharacter?.characterName
        elementlabel.text = selectedCharacter?.characterElement
        arealabel.text = selectedCharacter?.characterArea
        imageView.image = selectedCharacter?.image
    }
    

    

}
