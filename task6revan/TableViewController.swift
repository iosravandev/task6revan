//
//  TableViewController.swift
//  task6revan
//
//  Created by Ravan on 23.08.24.
//

import UIKit

class  TableViewController: UIViewController{
    @IBOutlet weak var tableView: UITableView! {
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
            let nib = UINib(nibName: "TableViewCustomCell", bundle: nil)
            tableView.register(nib, forCellReuseIdentifier:  "random")
            
        }
    }
    override func viewDidLoad() {
        
    }
}
extension TableViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "random", for: indexPath)
        return cell
        
    }
    
     
}

