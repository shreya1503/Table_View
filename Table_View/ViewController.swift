//
//  ViewController.swift
//  Table_View
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblCountry: UITableView!
    
    lazy var countryNames : [Country] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        loadCountries()
        // Do any additional setup after loading the view.
    }
        
    func loadCountries()
    {
        countryNames.append(Country(name: "Afghanistan", capital: "Kabul", flag: #imageLiteral(resourceName: "Afghanistan")))
        countryNames.append(Country(name: "India", capital: "New Delhi", flag: #imageLiteral(resourceName: "India")))
        countryNames.append(Country(name: "France", capital: "Paris", flag: #imageLiteral(resourceName: "France")))
        countryNames.append(Country(name: "Canada", capital: "Ottawa", flag: #imageLiteral(resourceName: "Canada")))
        countryNames.append(Country(name: "Nepal", capital: "Kathmandu", flag: #imageLiteral(resourceName: "Nepal")))
        
        //  ["Afghanistan", "Angola", "Aruba", "Canada", "India", "Bahamas", "Ghana", "Nepal", "France", "USA", "Kenya", "Bermudes", "Danemark", "Mexico", "UK", "China", "Pakistan", "Zimbabave", "Venezuella", "Turkey", "Qatar", "Philippines", "NetherLand", "Sri Lanka", "Iran"]
    }

}

extension ViewController : UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return countryNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell")
        
        let Country = countryNames[indexPath.row]
        cell?.textLabel?.text = Country.name
        cell?.detailTextLabel?.text = Country.capital
        cell?.imageView?.image = Country.flag
                
        return cell!
        
    }
    
    
    
}
