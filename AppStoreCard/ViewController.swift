//
//  ViewController.swift
//  AppStoreCard
//
//  Created by Soulchild on 12/02/2019.
//  Copyright © 2019 fluffy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let cardCellReuseIdentifier = "cardCellReuseIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: "CardTableViewCell", bundle: nil), forCellReuseIdentifier: cardCellReuseIdentifier)
        tableView.rowHeight = self.view.frame.width
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cardCellReuseIdentifier, for: indexPath) as! CardTableViewCell
        if indexPath.row % 2 == 0 {
            cell.cardImageView.image = UIImage(named: "Lego")
        } else {
            cell.cardImageView.image = UIImage(named: "Building")
        }
        return cell
    }
    
}

extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

