//
//  ViewController.swift
//  ColorPicker
//
//  Created by Mercy Housh on 7/4/19.
//  Copyright © 2019 Mercy Housh. All rights reserved.
//

import UIKit

let initial = Int.random(in: 0...colors.count - 1)

private let colors = [Color(name: "Red", uiColor: UIColor.red),
                      Color(name: "Orange", uiColor: UIColor.orange),
                      Color(name: "Yellow", uiColor: UIColor.yellow),
                      Color(name: "Green", uiColor: UIColor.green),
                      Color(name: "Blue", uiColor: UIColor.blue),
                      Color(name: "Purple", uiColor: UIColor.purple),
                      Color(name: "Brown", uiColor: UIColor.brown),
]

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
        
        view.backgroundColor = colors[initial].uiColor
        detailLabel.text = colors[initial].name
        pickerView.selectRow(initial, inComponent: 0, animated: true)
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        view.backgroundColor = colors[row].uiColor
        detailLabel.text = colors[row].name
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
}
