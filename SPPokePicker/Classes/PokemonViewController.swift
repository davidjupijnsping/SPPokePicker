//
//  ViewController.swift
//  PokePicker
//
//  Created by David Jupijn on 26/08/16.
//  Copyright © 2016 Sping BV. All rights reserved.
//

import UIKit

public class PokemonViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!

    let resourcePath = "\(NSBundle(forClass: PokemonViewController.self).resourcePath!)/"
    var pokemon: [String] = []
    var index = 0


    public override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadImages()
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadImages() {

        var resourcesContent : [String] {
            return try! NSFileManager().contentsOfDirectoryAtPath(resourcePath)
        }
        pokemon = resourcesContent
        imageView.image = UIImage(contentsOfFile: "\(resourcePath)/\(pokemon.first!)")
        updatePokemonName()

    }

//    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        nextPokemon(self)
//    }

    @IBAction func previousPokemon(sender: AnyObject) {
        index -= 1
        if index == -1 {
            index = pokemon.count - 1
        }
        imageView.image = UIImage(contentsOfFile: "\(resourcePath)/\(pokemon[index])")
        updatePokemonName()
    }

    @IBAction func nextPokemon(sender: AnyObject) {
        index += 1
        if index == pokemon.count {
            index = 0
        }
        imageView.image = UIImage(contentsOfFile: "\(resourcePath)/\(pokemon[index])")
        updatePokemonName()
    }
    
    func updatePokemonName() {
        nameLabel.text = pokemon[index].componentsSeparatedByString(".").first!
    }
}

