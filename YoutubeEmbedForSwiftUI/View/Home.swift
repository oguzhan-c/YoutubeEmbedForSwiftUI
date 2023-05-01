//
//  Home.swift
//  YoutubeEmbedForSwiftUI
//
//  Created by Oğuzhan Can on 1.05.2023.
//

import SwiftUI
import WebKit
struct Home: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Divider()
                    YoutubeView(ID: "3uEbkUmS29A")

                }
            }
        }
    }
}

