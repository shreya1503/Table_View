//
//  DataStorage.swift
//  Table_View
//
//  Created by MacStudent on 2020-03-05.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class DataStorage
{
    private static let instance = DataStorage()
    
    private lazy var countryList : [Country] = []
    
    private init(){}
    
    static func getInstance() -> DataStorage
    {
        return instance
    }
    
    func addCountry(country: Country)
    {
        self.countryList.append(country)
    }
    
    func getAllCountries() -> [Country]
    {
        return self.countryList
    }
    
    func loadData()
    {
        countryList.removeAll()
        countryList.append(Country(name: "Afghanistan", capital: "Kabul", flag: #imageLiteral(resourceName: "af")))
        countryList.append(Country(name: "India", capital: "New Delhi", flag: #imageLiteral(resourceName: "in")))
        countryList.append(Country(name: "France", capital: "Paris", flag: #imageLiteral(resourceName: "fr-1")))
        countryList.append(Country(name: "Canada", capital: "Ottawa", flag: #imageLiteral(resourceName: "ca-1")))
        countryList.append(Country(name: "Nepal", capital: "Kathmandu", flag: #imageLiteral(resourceName: "np")))
        
    }
    
}
