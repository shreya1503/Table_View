//
//  Country.swift
//  Table_View
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
import UIKit

class Country
{
    var name : String
    var capital : String
    var flag : UIImage
    
    init(name : String, capital : String, flag : UIImage)
    {
        self.name = name
        self.capital = capital
        self.flag = flag
    }
}
