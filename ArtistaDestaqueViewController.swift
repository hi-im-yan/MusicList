//
//  ArtistaDestaqueViewController.swift
//  MusicaLista
//
//  Created by student on 22/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ArtistaDestaqueViewController: UIViewController {
    
    
    @IBOutlet weak var artistaDestaque: UILabel!

    @IBOutlet weak var descricaoDestaque: UILabel!
    
    @IBOutlet weak var imageDestaque: UIImageView!
    
    var nomeArtista = ""
    var descricaoArtista = ""
    var imagemArtista = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = nomeArtista
        imageDestaque.image = UIImage(named: imagemArtista)
        descricaoDestaque.text = descricaoArtista
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
