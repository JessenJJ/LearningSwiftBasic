//
//  WebView.swift
//  LearningSwiftBasic
//
//  Created by User50 on 05/04/24.
//

import SwiftUI
import SafariServices

struct WebView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<WebView>)
    -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController:
        SFSafariViewController, context:
        UIViewControllerRepresentableContext<WebView>) {
        
    }
    
    
}
