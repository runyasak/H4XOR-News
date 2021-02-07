//
//  DetailView.swift
//  H4XOR News (iOS)
//
//  Created by Runyasak Chaengnaimuang on 7/2/2564 BE.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url: String?

    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com").previewLayout(.sizeThatFits)
    }
}

struct WebView: UIViewRepresentable {
    let urlString: String?

    func makeUIView(context: Context) -> WebView.UIViewType {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
