//
//  YoutubeView.swift
//  YoutubeEmbedForSwiftUI
//
//  Created by Oğuzhan Can on 1.05.2023.
//

import SwiftUI
import WebKit
struct YoutubeView: View {
    let ID : String
    var body: some View {
        Video(videoId:ID)
            .frame(width: 350 , height: 190)
            .cornerRadius(12)
            .padding(.horizontal , 24)
    }
}

struct Video : UIViewRepresentable{
    let videoId : String
    func makeUIView(context: Context) -> some WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoId)") else{return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
    
}

