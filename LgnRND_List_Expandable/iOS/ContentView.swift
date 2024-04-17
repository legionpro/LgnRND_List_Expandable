//
//  ContentView.swift
//  LgnRND_List_Expandable
//
//  Created by Oleh Poremskyy on 17.04.2024.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            VStack {
                List(sampleMenuItems, children: \.subMenuItems) { item in
                    HStack {
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        
                        Text(item.name)
                            .font(.system(.title3, design: .rounded))
                            .bold()
                    }
                }
                .listStyle(.plain)
                HStack( spacing: 30 ) {
                    Button("Outline Grp", action: { coordinator.path.append(PathInt.one) } )
                    Button("Disclosure Grp", action: { coordinator.path.append(PathStr.first) } )
                }
            }
            .padding()
            .navigationTitle("Simple LIST")
            .navigationDestination(for: PathInt.self) { path in
                switch path {
                case .one:
                    OGListView()
                case .two:
                    Text("navigate from PathInt two")
                case .three:
                    Text("navigate from PathInt three")
                }
            }
            .navigationDestination(for: PathStr.self) { path in
                switch path {
                case .first:
                    DGListView()
                case .second:
                    Text("navigate from PathStr second")
                case .third:
                    Text("navigate from PathStr third")
                }
            }
        }
    }
}

