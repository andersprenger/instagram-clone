//
//  Extensions.swift
//  Instagram
//
//  Created by Anderson Sprenger on 26/05/21.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
