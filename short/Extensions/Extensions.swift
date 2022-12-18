//
//  Extensions.swift
//  short
//
//  Created by Carlos Petit on 08-12-22.
//

import UIKit

extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


