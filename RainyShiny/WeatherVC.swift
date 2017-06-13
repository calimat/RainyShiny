//
//  ViewController.swift
//  RainyShiny
//
//  Created by Ricardo Herrera Petit on 6/6/17.
//  Copyright © 2017 Ricardo Herrera Petit. All rights reserved.
//

import UIKit


class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var currentTempLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var currentWeatherImage: UIImageView!
    
    @IBOutlet weak var currentWeatherTypeLabel: UILabel!
    

    @IBOutlet weak var tableView: UITableView!
    
    
    var currentWather = CurrentWeather()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.estimatedRowHeight = 30
        tableView.rowHeight = UITableViewAutomaticDimension
        
        currentWather.downloadWeatherDetails {
            //Setup UI to load downloaded data
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        
        return cell 
    }



}

