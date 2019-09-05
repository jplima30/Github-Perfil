//
//  User.swift
//  Github Perfil
//
//  Created by jplima on 04/09/19.
//  Copyright © 2019 jplima. All rights reserved.
//
import UIKit
import Foundation

class User {
    
    var nomeUsuario:String
    var projetos:[String]
    var imagemPerfil:UIImage
    
    init (nomeUsuario:String, projetos:[String], imagemPerfil:UIImage) {
        self.nomeUsuario = nomeUsuario
        self.projetos = projetos
        self.imagemPerfil = imagemPerfil
    
    }
    
}
