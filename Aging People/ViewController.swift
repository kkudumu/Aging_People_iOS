//
//  ViewController.swift
//  Aging People
//
//  Created by Kioja Kudumu on 11/2/17.
//  Copyright © 2017 Kioja Kudumu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    lazy var names = ["George", "Betty", "Fran", "Joe", "Helda", "Winifred", "Zed", "Sara", "Jeffy", "Abraham", "Anna", "Melinda" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}
class NameCell: UITableViewCell {
    @IBOutlet weak var ageLabel: UILabel!
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell") as! NameCell
        cell.textLabel?.text = names[indexPath.row]
        cell.ageLabel.text = String(arc4random_uniform(91) + 5)
        return cell
    }
}
