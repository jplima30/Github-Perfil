//
//  GithubUserAPI.swift
//  Github Perfil
//
//  Created by jplima on 05/09/19.
//  Copyright © 2019 jplima. All rights reserved.
//

import Foundation
import Alamofire

class GithubUserAPI {
    
    static func getUsers(userName:String, onComplete:@escaping([Project]?)->Void){
        
        if let url:URL = URL(string:"https://api.github.com/users/\(userName)/repos"){
            
            Alamofire.request(url).responseJSON { (response) in
                let decode:JSONDecoder = JSONDecoder()
                guard let data = response.data,
                    let project:[Project] = try? decode.decode([Project].self, from: data) else {
                        onComplete(nil)
                        return
                }
                onComplete(project)
            }
        }
    }
    
}
