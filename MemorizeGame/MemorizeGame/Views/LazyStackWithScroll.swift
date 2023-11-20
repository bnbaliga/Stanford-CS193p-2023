//
//  Playground.swift
//  MemorizeGame
//
//  Created by Narasimha Baliga on 11/17/23.
//

import SwiftUI

struct Playground: View {
    @State private var teams = DataManager().getTeams()
    
    var body: some View {
        
        VStack(spacing: 20, content: {
            Text("LazyVStackDemo")
                .font(.largeTitle)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            Text("With ScrollView")
                .foregroundColor(.gray)
            
            Text("This is all about using LazyVStack and ScrollView to show case list of users")
                .padding()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(
                    RoundedRectangle(cornerRadius: 1)
                    .foregroundColor(.yellow)
                    )
            
            ScrollView() {
                LazyVStack(pinnedViews: [.sectionHeaders, .sectionFooters]) {
                    ForEach(teams) { team in
                        Section(header: TeamHeaderView(teamData: team),
                                footer: TeamVerticalFooterView(teamData: team)) {
                            ForEach(team.members) { person in
                                Image("\(person.picture)")
                                    .resizable()
                                    .frame(width: 300, height: 300)
                            }
                        }
                    }
                }
            }
        })
        .font(.title)
    }
}

struct TeamHeaderView : View {
    
    var teamData: Team
    var body: some View {
        HStack {
            Text(teamData.name)
            Image(systemName: teamData.logo)
        }
        .frame(width: 300, height: 75)        .background(Rectangle().fill(Color.yellow).opacity(0.9))
    }
}

struct TeamVerticalFooterView: View {
    var teamData: Team

    var body: some View {
        HStack {
            Text("Team Total: ")
                .font(.title)
            Text("\(teamData.members.count)")
                .font(.title)
                .fontWeight(.bold)
        }
        .frame(width: 300, height: 50)
        .background(Rectangle().fill(Color.yellow).opacity(0.9))
    }
}

#Preview {
    Group {
        Playground()
            .preferredColorScheme(.dark)
    }
}
