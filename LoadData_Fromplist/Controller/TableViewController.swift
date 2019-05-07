//
//  TableViewController.swift
//  LoadData_Fromplist
//
//  Created by Just Kidding on 4/12/19.
//  Copyright © 2019 Just Kidding. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var displayPlace : [Place] = DataService.shared.getDataCity(filename: "Cities")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return displayPlace.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = displayPlace[indexPath.row].name
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
        case "showDistricts":
            if let destination = segue.destination as? DistrictsViewController {
                if let index = tableView.indexPathForSelectedRow {
                    let selectedCity = displayPlace[index.row] as! City
                    destination.displayPlace = DataService.shared.getDataDistrict(filename: "Districts").filter{$0.cityCode == selectedCity.cityCode}
                }
            }
            
        default:
            return
        }
        
    }
    


}

class DistrictsViewController: TableViewController {
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
