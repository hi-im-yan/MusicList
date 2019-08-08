//
//  ListaTableViewController.swift
//  MusicaLista
//
//  Created by student on 22/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ListaTableViewController: UITableViewController {

    var musicas = [ListaMusica]()
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        
        musicas = MusicasDAO.getList()
        
        
        // Uncomment the following line to preserve selection between presentations
         //self.clearsSelectionOnViewWillAppear = true

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }



    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return musicas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListaID", for: indexPath)

        // Configure the cell...
        
        if let listaCell = cell as? ListaTableViewCell{
            
            if indexPath.row % 2 == 0 {
                cell.backgroundColor = UIColor.white
                cell.textLabel?.textColor = UIColor.blue
            }
            else {
                cell.backgroundColor = UIColor.black
                cell.textLabel?.textColor = UIColor.white
                
            }
            
            let musica = musicas[indexPath.row]
            
            listaCell.musicaLabel.text = musica.nome
            listaCell.artistaLabel.text = musica.artista
            listaCell.albumLabel?.text = musica.album
            listaCell.albumImage?.image = UIImage(named: musica.image)
            
            return listaCell
        }

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let index = (tableView.indexPathForSelectedRow?.row)!
        
        if segue.identifier == "detalheMusica" {
            if let detalheView = segue.destination as? DetalheViewController{
                detalheView.nomeMusica = musicas[index].nome
                detalheView.nomeArtista = musicas[index].artista
                detalheView.nomeAlbum = musicas[index].album
                detalheView.imagemAlbum = musicas[index].image
                //cell.backgroundColor = (realRow%2)?[UIColor lightGrayColor]:[UIColor grayColor]
                //detalheView.
            }
        }
    }
    

}
