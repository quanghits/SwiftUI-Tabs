//
//  Tabs.swift
//  SwiftUITabs
//
//  Created by TA MINH QUANG on 20/08/2022.
//

import SwiftUI

@available(iOS 14.0, *)
struct Tab {
    var icon: Image?
    var title: String
}

@available(iOS 14.0, *)
public struct Tabs<Content: View>: View
{
    var tabs: [String]
    @Binding var selectedTab: Int
    @ViewBuilder var content: Content
    
    var backgroundColor: Color = .white
    var contentColor: Color = .white
    var textColor: Color = .black.opacity(0.4)
    var activeTextColor: Color = .black.opacity(0.8)
    var barIndicatorColor: Color = .blue.opacity(0.7)
    var textSize: CGFloat = 16
    var padding: CGFloat = 15
    
    
    public var body: some View
    {
        VStack (spacing: 1)
        {
            // TABS | TITLE
            ScrollView(.horizontal, showsIndicators: false) {
                ScrollViewReader { proxy in
                    HStack(spacing: 0) {
                        ForEach(0 ..< tabs.count, id: \.self) { row in
                            Button(action: {
                                withAnimation {
                                    selectedTab = row
                                }
                            }, label: {
                                VStack(spacing: 0) {
                                    HStack {
                                        // Text
                                        Text(tabs[row])
                                            .font(Font.system(size: textSize, weight: .semibold))
                                            .padding(EdgeInsets(top: 10, leading: 3, bottom: 10, trailing: 15))
                                    }
                                    .padding(.horizontal, padding)
                                    .foregroundColor(selectedTab == row ? activeTextColor : textColor)
                                    
                                    // Bar Indicator
                                    RoundedRectangle(cornerRadius: 2)
                                        .fill(barIndicatorColor)
                                        .frame(height: 2.2)
                                        .scaleEffect(x: selectedTab == row ? 1 : 0,
                                                     y: 1, anchor: .center)
                                        .offset(x: 0, y: -0.5)
                                }
                            })
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .onChange(of: selectedTab) { target in
                        withAnimation {
                            proxy.scrollTo(target)
                        }
                    }
                }
            }
            .background(backgroundColor)
            .shadow(color: .black.opacity(0.2), radius: 1, x: 0, y: -0.5)
            
            // TABS | CONTENT
            TabView(selection: $selectedTab.animation(),
                    content: {
                content
            })
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 300)
        }
        .background(contentColor)
    }
}

@available(iOS 14.0, *)
struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        
        Tabs(tabs:  ["Music", "Movies", "Books", "Games"],
             selectedTab: .constant(0),
             content: {
                Text("Music").font(.system(size: 15)).foregroundColor(.black).tag(0)
                Text("Movies").tag(1)
                Text("Books").tag(2)
                Text("Games").tag(3)
             },
             backgroundColor: .white,
             contentColor: .white,
             textColor: .black.opacity(0.4),
             activeTextColor: .black.opacity(0.8),
             barIndicatorColor: .blue.opacity(0.7),
             textSize: 16,
             padding: 15)
    }
}
