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
        //loadCountries()
        countryNames = DataStorage.getInstance().getAllCountries()
    
    }
        
    func loadCountries()
    {
        
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return CGFloat(100.0)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let c = countryNames[indexPath.row]
        print(c.name)
    }
    
    
}
