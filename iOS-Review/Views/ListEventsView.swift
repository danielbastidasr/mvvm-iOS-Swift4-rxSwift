//
//  ListEventsView.swift
//  iOS-Review
//
//  Created by Daniel Bastidas Ramirez on 17/02/2018.
//  Copyright © 2018 Daniel Bastidas. All rights reserved.
//

import UIKit

class ListEventsView : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        return tableView.dequeueReusableCell(withIdentifier: "EventViewCell")!

    }
    
    
}

