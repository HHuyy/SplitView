//
//  MasterViewController.swift
//  SplitView
//
//  Created by tham gia huy on 6/4/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit
protocol PokemonSelectionDelegate: class {
    func PokemonSelected(_ newPokemon: Pokemon)
}

class MasterViewController: UITableViewController {
    let pokemons = [
        Pokemon(name: "Charmander", description: "A flame burns on the tip of its tail from birth. It is said that a Charmander dies if its flame ever goes out.", iconName: "Charmander", type: .Fire),
        Pokemon(name: "Squirtle", description: "This Tiny Turtle Pokémon draws its long neck into its shell to launch incredible water attacks with amazing range and accuracy. The blasts can be quite powerful.", iconName: "Squirtle", type: .Water),
        Pokemon(name: "Bulbasaur", description: "Tthe Seed Pokémon. A young Bulbasaur uses the nutrients from its seed for the energy it needs to grow.", iconName: "Bulbasaur", type: .Wood),
        Pokemon(name: "Dugtrio", description: "This Pokémon is able to tunnel deep beneath the Earth's surface.", iconName: "Dugtrio", type: .Earth)
    ]
    weak var delegate: PokemonSelectionDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let pokemon = pokemons[indexPath.row]
        cell.textLabel?.text = pokemon.name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedPokemon = pokemons[indexPath.row]
        delegate?.PokemonSelected(selectedPokemon)
        if let detailViewController = delegate as? DetailViewController, let detailNavigationController = detailViewController.navigationController { 
            splitViewController?.showDetailViewController(detailNavigationController, sender: nil)
        }
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
