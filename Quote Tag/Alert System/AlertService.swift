//
//  AlertService.swift
//  Smite
//
//  Created by Dimeji Situ on 2019-05-27.
//  Copyright © 2019 Dimeji Situ. All rights reserved.
//

import Foundation
import UIKit

class AlertService{
    func alert() -> AlertViewController{
        let storyboard = UIStoryboard(name: "AlertStoryboard", bundle: .main)
        let alertVC = storyboard.instantiateViewController(withIdentifier: "AlertVC") as! AlertViewController
        return alertVC
    }
}
