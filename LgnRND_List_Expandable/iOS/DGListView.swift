//
//  DGListView.swift
//  List_Expandable_LeRND_iOS
//
//  Created by Oleh Poremskyy on 16.04.2024.
//

import SwiftUI


//
//DisclosureGroup Expand each section individually
//

struct DGListView: View {
    @State private var expanded: Set<String> = []
    
    var body: some View {
        List(sampleMenuItems) { item in
            DisclosureGroup(
                isExpanded: Binding<Bool>(
                    get: { expanded.contains(item.id.uuidString) },
                    set: { isExpanding in
                        if isExpanding {
                            expanded.insert(item.id.uuidString)
                        } else {
                            expanded.remove(item.id.uuidString)
                        }
                    }
                ),
                content: {
                    Text("Just diclosure content")
                },
                label: {
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
            )

        }
        .listStyle(.plain)
    }
}
