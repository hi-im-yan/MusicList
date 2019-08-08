//
//  DetalheViewController.swift
//  MusicaLista
//
//  Created by student on 23/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class DetalheViewController: UIViewController{

    @IBOutlet weak var nomeArtistaLabel: UILabel!
    
    @IBOutlet weak var nomeMusicaLabel: UILabel!
    
    @IBOutlet weak var nomeAlbumLabel: UILabel!
    
    @IBOutlet weak var albumImage: UIImageView!
    
    
    var imagemAlbum = ""
    var nomeArtista = ""
    var nomeMusica = ""
    var nomeAlbum = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "*-*"
        nomeMusicaLabel.text = nomeMusica
        nomeArtistaLabel.text = nomeArtista
        nomeAlbumLabel.text = ""
        albumImage.image = UIImage(named: imagemAlbum)
        
        //var myMediaPlayer = MPMusicPlayerController.systemMusicPlayer
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
