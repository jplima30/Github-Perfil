//
//  User.swift
//  Github Perfil
//
//  Created by jplima on 04/09/19.
//  Copyright © 2019 jplima. All rights reserved.
//

import Foundation

struct Project:Codable {
    let name:String
    let owner:Owner
}

struct Owner:Codable {
    let avatar_url:String
    let login:String
}
