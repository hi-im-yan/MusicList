//
//  DestaqueViewController.swift
//  MusicaLista
//
//  Created by student on 22/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class DestaqueViewController: UIViewController {

    @IBOutlet weak var imageDestaqueSemanal: UIImageView!
    
    
    @IBOutlet weak var labelArtistaSemanal: UILabel!
    
    
    @IBOutlet weak var labelBreveDescricao: UILabel!
    
    let artista = MusicasDAO.getList()[2]
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Artista Da Semana"
        labelArtistaSemanal.text = artista.artista
        imageDestaqueSemanal.image = UIImage(named: artista.image)
        labelBreveDescricao.text = "isso aqui ta uma porra"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var artistaDestaqueSemanal: UILabel!


    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "artistaMaisSobre" {
            if let destaqueView = segue.destination as? ArtistaDestaqueViewController{
                destaqueView.nomeArtista = artista.artista
                destaqueView.descricaoArtista = "Nao da pra descrever em palavras"
                destaqueView.imagemArtista = artista.image
            }
        }
    }
    
    
    

}
