//
//  Podcast.swift
//  PodModaFukinCast
//
//  Created by student on 19/07/19.
//  Copyright © 2019 hackatruck. All rights reserved.
//

import Foundation

class ListaMusica {
    
    let nome : String
    let artista : String
    let album : String
    let image : String
    
    init(nome : String, artista : String, album : String, image : String){
        self.nome = nome
        self.artista = artista
        self.album = album
        self.image = image
    }
}

class MusicasDAO {
    static func getList() -> [ListaMusica] {
        return [
            ListaMusica(nome : "With Or Without You", artista : "U2", album: "With Or Without You" , image : "U2Image"),
            ListaMusica(nome : "Saturday Night", artista : "DJ Khalid", album: "sei la", image : "DJKhalidImage"),
            ListaMusica(nome : "I Found You", artista : "Benny Blanco & Calvin Harris", album: "sei la", image : "BennyBlancoImage"),
            ListaMusica(nome : "99 Vidas", artista : "Sei lah mano 2", album: "sei la", image : "99vidas"),
            ListaMusica(nome : "99 Vidas", artista : "Sei lah mano 3 ", album: "sei la", image : "99vidas"),
            ListaMusica(nome : "99 Vidas", artista : "Sei lah mano 4", album: "sei la", image : "99vidas"),
            ListaMusica(nome : "99 Vidas", artista : "Sei lah mano 5", album: "sei la", image : "99vidas"),
            
        ]
    }
}
