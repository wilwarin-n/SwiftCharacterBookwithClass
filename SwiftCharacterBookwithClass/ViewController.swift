//
//  ViewController.swift
//  SwiftCharacterBookwithClass
//
//  Created by Aydın Kutlu on 21.03.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var characterList = [Character]()
    var userSelect : Character?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        //Characters
        let traveler = Character(characterName: "Traveler", characterElement: "Anemo", characterArea: "Mondstat", image: UIImage(named: "traveler")!)
        
        let ganyu = Character(characterName: "Ganyu", characterElement: "Cryo", characterArea: "Liyue", image: UIImage(named: "ganyu")!)
        
        let hutao = Character(characterName: "Hu Tao", characterElement: "Pyro", characterArea: "Liyue", image: UIImage(named: "hu tao")!)
        
        let nahida = Character(characterName: "Nahida", characterElement: "Dendro", characterArea: "Sumeru", image: UIImage(named: "nahida")!)
        
        characterList = [traveler,ganyu,hutao,nahida]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characterList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = characterList[indexPath.row].characterName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userSelect = characterList[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedCharacter = userSelect
        }
    }


}

