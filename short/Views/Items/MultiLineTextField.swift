//
//  MultiLineTextField.swift
//  short
//
//  Created by Carlos Petit on 05-12-22.
//

import SwiftUI

struct MultiLineTextField: UIViewRepresentable {
    func makeCoordinator() -> MultiLineTextField.Coordinator {
        return MultiLineTextField.Coordinator(parent: self)
    }
    
    @Binding var text: String
    func makeUIView(context: Context) -> some UITextView {
        let text = UITextView()
        text.allowsEditingTextAttributes = true
        text.isEditable = true
        text.text = "Short something"
        text.font = .systemFont(ofSize: 20)
        text.textColor = .gray
        text.delegate = context.coordinator
        return text
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        var parent: MultiLineTextField
        
        init(parent: MultiLineTextField) {
            self.parent = parent
        }
        
        func textViewDidBeginEditing(_ textView: UITextView) {
            textView.text = ""
            textView.textColor = .black
        }
        
        func textViewDidChange(_ textView: UITextView) {
            self.parent.text = textView.text
        }
        
    }
    
}
