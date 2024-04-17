//
//  OGList.swift
//  List_Expandable_LeRND_iOS
//
//  Created by Oleh Poremskyy on 16.04.2024.
//

import SwiftUI

struct OGListView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
                List(sampleMenuItems) { item in
                    Section(header:
                        HStack {
                            Text(item.name)
                                .font(.title3)
                                .fontWeight(.heavy)
                            Image(item.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)

                        }
                        .padding(.vertical)

                    ) {
                        OutlineGroup(item.subMenuItems ?? [MenuItem](), children: \.subMenuItems) { item1 in

                            HStack {
                                Image(item1.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                
                                Text(item1.name)
                                    .font(.system(.title3, design: .rounded))
                                    .bold()
                            }
                        }
                    }
                }

            .padding()
            .navigationTitle("OutlineGroup")
    }
}
