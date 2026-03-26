//
//  ViewController.swift
//  AirBnb-iOS-UIKit
//
//  Created by Swantan Barua on 20/01/26.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOUTLETS
    @IBOutlet weak var exploreTableView: UITableView!
    
    // MARK: - LIFECYCLE METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exploreTableView.delegate = self
        exploreTableView.dataSource = self
        
        exploreTableView.register(
            UINib(
                nibName: "SearchBarContainerTableViewCell",
                bundle: nil
            ),
            forCellReuseIdentifier: "SearchBarContainerTableViewCell"
        )
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "SearchBarContainerTableViewCell",
            for: indexPath
        ) as? SearchBarContainerTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
}
