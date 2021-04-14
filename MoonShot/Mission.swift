//
//  Mission.swift
//  MoonShot
//
//  Created by Alejo Acosta on 12/04/2021.
//

import Foundation



struct Mission : Codable, Identifiable {
    //This is called a nested struct
    struct CrewRole: Codable {
        let name : String
        let role : String
    }
    let id : Int
    let launchDate : Date?
    let crew : [CrewRole]
    let description : String
    
    
    
    var displayName : String {
        "Apollo \(id)"
    }
    
    var image : String {
        "apollo\(id)"
    }
    
    
    var formattedLaunchDate : String {
        if let launchDate = launchDate {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            return formatter.string(from: launchDate)
        } else {
            return "N/A"
        }
        
        
    }
}
