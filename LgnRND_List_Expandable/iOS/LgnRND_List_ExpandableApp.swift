//
//  LgnRND_List_ExpandableApp.swift
//  LgnRND_List_Expandable
//
//  Created by Oleh Poremskyy on 17.04.2024.
//

import SwiftUI


enum PathInt: Hashable {
    case one, two, three
}

enum PathStr: Hashable {
    case first, second, third
}

class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
}


@main
struct LgnRND_List_ExpandableApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
