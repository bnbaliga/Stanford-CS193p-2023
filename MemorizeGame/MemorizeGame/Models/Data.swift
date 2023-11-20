//
//  Data.swift
//  MemorizeGame
//
//  Created by Narasimha Baliga on 11/19/23.
//

import Foundation

struct Team: Identifiable {
    var id = UUID()
    var name: String
    var logo: String
    var members: [Profile]
}

struct Profile: Identifiable {
    var id = UUID()
    var name: String
    var picture: String
}

struct DataManager {
    func getTeams() -> [Team] {
        return [
            Team(name: "Lions", logo: "surfboard.fill", members: getTeamMembers(teamNumber: 1)),
            Team(name: "Tigers", logo: "gym.bag", members: getTeamMembers(teamNumber: 2)),
            Team(name: "Leopards", logo: "gym.bag.fill", members: getTeamMembers(teamNumber: 0))
        ]
    }
    
    func getTeamMembers(teamNumber: Int) -> [Profile] {
        
        if (teamNumber == 1) {
            return [
                
                Profile(name: "Name 1", picture: "profile1"),
                Profile(name: "Name 2", picture: "profile2"),
                Profile(name: "Name 3", picture: "profile3"),
                Profile(name: "Name 4", picture: "profile4"),
                Profile(name: "Name 5", picture: "profile5")
            ]
        }
        if (teamNumber == 2) {
            return [
                
                Profile(name: "Name 6", picture: "profile6"),
                Profile(name: "Name 7", picture: "profile7"),
                Profile(name: "Name 8", picture: "profile8"),
                Profile(name: "Name 9", picture: "profile9"),
                Profile(name: "Name 10", picture: "profile10")
            ]
        }
        return [
            
            Profile(name: "Name 11", picture: "profile11"),
            Profile(name: "Name 12", picture: "profile12"),
            Profile(name: "Name 13", picture: "profile13"),
            Profile(name: "Name 14", picture: "profile14"),
            Profile(name: "Name 15", picture: "profile15")
        ]
    }
}
