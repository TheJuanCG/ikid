//
//  ViewControllerPreview.swift
//  iKid
//
//  Created by Juan Carlos Garcia on 4/27/25.
//

import SwiftUI
import UIKit

struct ViewControllerPreview: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return ViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

#Preview {
    ViewControllerPreview()
}
