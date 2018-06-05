//
//  DetailViewController.swift
//  SplitView
//
//  Created by tham gia huy on 6/4/18.
//  Copyright © 2018 tham gia huy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var type: UIImageView!
    var pokemon: Pokemon? {
        didSet {
            refreshUI()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func refreshUI() {
        loadViewIfNeeded()
        nameLabel.text =  pokemon?.name
        descriptionLabel.text = pokemon?.description
        iconImageView.image = pokemon?.icon
        type.image = pokemon?.typeImage
    }
    
}

extension DetailViewController: PokemonSelectionDelegate {
    func PokemonSelected(_ newPokemon: Pokemon) {
        pokemon = newPokemon
    }
    
}
