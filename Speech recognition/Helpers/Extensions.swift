//
//  Extensions.swift
//  VoiceOverlay
//
//  Created by Authentic-Identity-Ai on 25/06/2018.
//  Copyright © 2018 Authentic-Identity-Ai. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    public func dismissMe(animated: Bool, completion: (()->())? = nil) {
        var count = 0
        if let c = self.navigationController?.viewControllers.count {
            count = c
        }
        if count > 1 {
            self.navigationController?.popViewController(animated: animated)
            if let handler = completion {
                handler()
            }
        } else {
            dismiss(animated: animated, completion: completion)
        }
    }
}
