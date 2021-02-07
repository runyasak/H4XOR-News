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
