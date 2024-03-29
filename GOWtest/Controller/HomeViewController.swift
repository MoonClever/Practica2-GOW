//
//  HomeViewController.swift
//  GOWtest
//
//  Created by User on 08/03/24.
//

import UIKit

class HomeViewController: UITableViewController {
    
    @IBOutlet var menuTableView: UITableView!
    
    let menuOptions : [MenuOption] = [
            MenuOption(
                title:"menu.option.videogames",
                image:"gamecontroller.fill",
                segue:"gamesSegue")
            , MenuOption(
                title:"menu.option.weapons",
                image:"shield.fill",
                segue:"weaponsSegue")
            , MenuOption(
                title:"menu.option.characters",
                image:"person.fill",
                segue:"charactersSegue")
            ,MenuOption(
                title:"menu.option.merchandise",
                image:"shippingbox.fill",
                segue:"merchandiseSegue")
        ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for : indexPath) as! MenuOptionCell
        //cell.menuLabel.text = NSLocalizedString(menuOptions[indexPath.row].title, comment: "")
        cell.menuLabel.text = menuOptions[indexPath.row].title.localized
        cell.menuImage.image = UIImage(systemName: menuOptions[indexPath.row].image)
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuOptions.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: menuOptions[indexPath.row].segue, sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
