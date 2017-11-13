//
//  ViewController.swift
//  ChartsFramework
//
//  Created by Tim Beals on 2017-11-13.
//  Copyright © 2017 Tim Beals. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {

    let chartView: PieChartView = {
        let view = PieChartView()
        view.backgroundColor = UIColor.blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("Send Data", for: .normal)
        button.backgroundColor = UIColor.red
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.white
        setupSubviews()
        
    }

    func setupSubviews() {
        
        view.addSubview(chartView)
        chartView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        chartView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        chartView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        chartView.heightAnchor.constraint(equalToConstant: view.bounds.width).isActive = true
     
        view.addSubview(button)
        button.topAnchor.constraint(equalTo: chartView.bottomAnchor, constant: 8).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.addTarget(self, action: #selector(buttonTouched(sender:)), for: .touchUpInside)
    }


    @objc func buttonTouched(sender: UIButton) {
        
        print("Yowzaa")
    }
    
}

