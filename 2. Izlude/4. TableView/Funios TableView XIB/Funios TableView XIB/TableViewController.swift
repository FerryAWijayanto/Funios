//
//  TableViewController.swift
//  Funios TableView XIB
//
//  Created by Ferry Adi Wijayanto on 24/07/22.
//

import UIKit

struct Country {
    let imageName: String
    let countryName: String
    let description: String
}

class TableViewController: UIViewController {
    
    var countrys: [Country] = [
        Country(imageName: "estonia", countryName: "Estonia", description: "Estonia is a country in the Baltic region of Northern Europe bordered to the north by the Gulf of Finland, to the west by the Baltic Sea, to the south by Latvia and to the east by Lake Peipus and Russia"),
        Country(imageName: "france", countryName: "France", description: "France is one of the oldest nations on Earth and the most ethnically diverse country in Europe"),
        Country(imageName: "germany", countryName: "Germany", description: "Germany is a country located in the heart of Western Europe. It is bordered by Denmark, Poland, Czechia, Austria, Switzerland, France, Luxembourg, Belgium, Netherlands, the North Sea, and the Baltic Sea.")
    ]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Funios Bootcamp"
        
        setupTableView()
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = 200
        tableView.register(UINib(nibName: String(describing: FlagsTableViewCell.self), bundle: nil), forCellReuseIdentifier: FlagsTableViewCell.cellID)
        
    }

}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Section 1"
        }
        
        return "Section 2"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countrys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FlagsTableViewCell.cellID, for: indexPath) as! FlagsTableViewCell
        let country = countrys[indexPath.row]
        
        cell.setup(country: country)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let country = countrys[indexPath.row]
        
        let detailVC = DetailViewController(navTitle: country.countryName)
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .none:
            break
        case .delete:
            countrys.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        case .insert:
            break
        @unknown default:
            fatalError("Country not found in list")
        }
    }
}
