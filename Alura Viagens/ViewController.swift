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
    
    let listasVigens: Array<String> = ["Rio de Janeiro", "Ceará", "São Paulo"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagens.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listasVigens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listasVigens[indexPath.row]
        
        return cell
        
    }


}

