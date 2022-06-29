//
//  ContentView.swift
//  CustomRSSReader
//
//  Created by Mario Hernandez Corral on 29/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		TabView {
			MyNewsView()
				.tabItem {
					Image(systemName: "newspaper")
					Text("My news")
				}
			
			SavedNewsView()
				.tabItem {
					Image(systemName: "bookmark")
					Text("Saved")
				}
			
			SettingsView()
				.tabItem {
					Image(systemName: "gear")
					Text("Settings")
				}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView()
    }
}
