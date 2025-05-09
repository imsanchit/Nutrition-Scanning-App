//
//  ContentView.swift
//  Nutrition Scanner
//
//  Created by Sanchit Mittal on 09/05/25.
//

import SwiftUI

struct ContentView: View {
    @Tokens var tokens
    
    var body: some View {
        NavigationStack {
            TabView {
                HomeView()
                .tabItem {
                    Label {
                        Text("Home")
                            .foregroundStyle(tokens.colors.icon.alwaysDark)
                    } icon: {
                        Icons.home
                    }
                }
                .padding(.top, tokens.spacing.p20)
                
                Text("Logs")
                .tabItem {
                    Label {
                        Text("Logs")
                            .foregroundStyle(tokens.colors.icon.alwaysDark)
                    } icon: {
                        Icons.logs
                    }
                }
                
                ScannerView()
                    .tabItem {
                        Label {
                            Text("")
                        } icon: {
                            Icons.scanner
                        }
                    }
                
                Text("Streaks")
                .tabItem {
                    Label {
                        Text("Streaks")
                            .foregroundStyle(tokens.colors.icon.alwaysDark)
                    } icon: {
                        Icons.streaks
                    }
                }
                
                Text("Profile")
                .tabItem {
                    Label {
                        Text("Profile")
                    } icon: {
                        Icons.profile
                    }
                }
            }
            .accentColor(tokens.colors.icon.alwaysDark)
            .typography(tokens.typography.button.s)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Icons.hamburger
                }
                ToolbarItem(placement: .principal) {
                    Icons.logo
                }
                ToolbarItem(placement: .primaryAction) {
                    Icons.search
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
