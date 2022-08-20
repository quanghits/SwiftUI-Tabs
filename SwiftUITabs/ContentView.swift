//
//  ContentView.swift
//  SwiftUITabs
//
//  Created by TA MINH QUANG on 20/08/2022.
//

import SwiftUI

struct ContentView: View
{
    @State private var selectedTab: Int = 0
    
    @State private var showingWelcome = false
    
    let tabs: [Tab] = [
        .init(icon: Image(systemName: "music.note"), title: "Music"),
        .init(icon: Image(systemName: "film.fill"), title: "Movies"),
        .init(icon: Image(systemName: "book.fill"), title: "Books"),
        .init(icon: Image(systemName: "gamecontroller.fill"), title: "Games")
    ]
    
    var body: some View
    {
        NavigationView {
            GeometryReader { geo in
                ZStack (alignment: .bottom)
                {
                    Tabs(tabs:  ["Music", "Movies", "Books", "Games"],
                         selectedTab: $selectedTab,
                         content: {
                            Text("Music").foregroundColor(.black).tag(0)
                            Text("Movies").foregroundColor(.black).tag(1)
                            Text("Books").foregroundColor(.black).tag(2)
                            Text("Games").foregroundColor(.black).tag(3)
                         })
                    
                    
//                    SlidingTabView(tabs: [""], selectedTab: $selectedTab, content: {
//                        Text("SFA")
//                    })
                }
                .frame(height: geo.size.height, alignment: .bottom)
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("Tabs SwiftUI")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
