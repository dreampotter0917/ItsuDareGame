//
//  ViewController.swift
//  ItsuDareGame
//
//  Created by あらいゆめ on 2023/02/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokoLabel: UILabel!
    @IBOutlet var dareLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    @IBOutlet var changeButton: UIButton!
    @IBOutlet var resetButton: UIButton!
    @IBOutlet var randomButton: UIButton!
    
    let itsuArray: [String] = ["1年前", "１週間前", "昨日", "今日"]
    let dokoArray: [String] = ["山の上で", "アメリカで", "学校で", "クラスで"]
    let dareArray: [String] = ["僕が", "大統領が", "先生が", "友達が"]
    let doshitaArray: [String] = ["叫んだ", "演説した", "怒った","踊った"]
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeButton.layer.cornerRadius = 35
        randomButton.layer.cornerRadius = 35
        resetButton.layer.cornerRadius = 35
        
        itsuLabel.layer.cornerRadius = 12
        dareLabel.layer.cornerRadius = 12
        dokoLabel.layer.cornerRadius = 12
        doshitaLabel.layer.cornerRadius = 12
        
        itsuLabel.clipsToBounds = true
        dareLabel.clipsToBounds = true
        dokoLabel.clipsToBounds = true
        doshitaLabel.clipsToBounds = true
        
        
    }
    
    
    
    @IBAction func change(){
        
        itsuLabel.text = itsuArray[index]
        dokoLabel.text = dokoArray[index]
        dareLabel.text = dareArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        if index == 3{
            
            index = 0
        }
        else {
            
            index = index+1
        }
    }
    
    
    @IBAction func reset(){
        itsuLabel.text = "----"
        dokoLabel.text = "----"
        dareLabel.text = "----"
        doshitaLabel.text = "----"
        
        index = 0
        
    }
    
    @IBAction func random(){
        let itsuIndex = Int.random(in: 0...3)
        let dokoIndex = Int.random(in: 0...3)
        let dareIndex = Int.random(in: 0...3)
        let doshitaIndex = Int.random(in: 0...3)
    
        print("いつ:\(itsuIndex)")
        print("どこで:\(dokoIndex)")
        print("誰が:\(dareIndex)")
        print("どうした:\(doshitaIndex)")
        
        itsuLabel.text = itsuArray[itsuIndex]
        dokoLabel.text = dokoArray[dokoIndex]
        dareLabel.text = dareArray[dareIndex]
        doshitaLabel.text = doshitaArray[doshitaIndex]
        
    }
}
