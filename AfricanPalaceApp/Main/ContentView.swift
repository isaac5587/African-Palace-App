//
//  ContentView.swift
//  AfricanPalace
//
//  Created by Trill Isaac on 7/1/22.
//

import SwiftUI

// Bottom Navigation Bar Setup
struct ContentView: View {
    var body: some View {
        TabView{
            HomeScreen()
                .tabItem(){
                    Image(systemName:"house")
                    Text("Home")
                }
            MenuScreen()
                .tabItem(){
                    Image(systemName: "menucard")
                    Text("Menu")
                }
            
            WebScreen(url: URL(string: "https://www.clover.com/online-ordering/african-palace-bargrill-florissant"))
                .tabItem(){
                    Image(systemName:"cart")
                    Text("Order Online")
                }
            
            ClothingScreen()
                .tabItem(){
                    Image(systemName: "tshirt")
                    Text("Clothing")
                }
            
            WebScreen(url: URL(string: "https://www.instagram.com/africanpalacestl/"))
                .tabItem(){
                    Image("InstagramIcon")
                    Text("Instagram")
                }
        }
        .accentColor(.black) // Makes selected tab highlighted with black
    }
}
