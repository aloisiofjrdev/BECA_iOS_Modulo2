//
//  Viagem.swift
//  Alura Viagens
//
//  Created by Aloisio Formento Junior on 27/12/20.
//  Copyright © 2020 Aloisio Formento Junior. All rights reserved.
//

import UIKit

class Viagem: NSObject {
    let titulo: String
    let quantidadeDeDias: Int
    let preco: String
    let caminhoDaImagem: String
    
    init(titulo: String, quantidadeDeDias: Int, preco: String, caminhoDaImagem: String){
        self.titulo = titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.preco = preco
        self.caminhoDaImagem = caminhoDaImagem
    }
    
    

}
