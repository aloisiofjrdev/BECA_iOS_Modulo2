//
//  ViewController.swift
//  Alura Viagens
//
//  Created by Aloisio Formento Junior on 23/12/20.
//  Copyright © 2020 Aloisio Formento Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tabelaViagens: UITableView!
    @IBOutlet weak var viewPacotes: UIView!
    @IBOutlet weak var viewHoteis: UIView!
    
    
    let listaViagens: Array<Viagem> = ViagemDAO().retornaTodasAsViagens()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewPacotes.layer.cornerRadius = 10
        self.viewHoteis.layer.cornerRadius = 10
        self.tabelaViagens.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaViagens.count
    }   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let viagemAtual = listaViagens[indexPath.row]
        
        cell.textLabel?.text = viagemAtual.titulo
        
        return cell
        
    }


}

