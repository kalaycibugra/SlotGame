//
//  page2ViewController.swift
//  SlotGame
//
//  Created by Bugra Kalayci on 3/10/19.
//  Copyright © 2019 Bugra Kalayci. All rights reserved.
//

import UIKit
var fruit=["🍎","🍏","🍐","🍊","🍋","🍌","🥥","🍉","🍇","🍓","🍈","🍒","🍑","🥭","🍍","🥝"]
var score1: Int=0
class page2ViewController: UIViewController {
    @IBOutlet weak var slot1: UILabel!
    @IBOutlet weak var slot2: UILabel!
    @IBOutlet weak var slot3: UILabel!
    @IBOutlet weak var score: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        score.text="0"
        score1=0;
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func spin(_ sender: UIButton) {
        
//        let randomInt = Int.random(in: 1..<5)
        let deadtime=DispatchTime.now()+0.1
        DispatchQueue.main.asyncAfter(deadline: deadtime){
            self.setValues()
            let deadtime=DispatchTime.now()+0.1
            DispatchQueue.main.asyncAfter(deadline: deadtime){
               self.setValues()
                let deadtime=DispatchTime.now()+0.1
                DispatchQueue.main.asyncAfter(deadline: deadtime){
                    self.setValues()
                    let deadtime=DispatchTime.now()+0.1
                    DispatchQueue.main.asyncAfter(deadline: deadtime){
                        self.setValues()
                        let deadtime=DispatchTime.now()+0.1
                        DispatchQueue.main.asyncAfter(deadline: deadtime){
                            self.setValues()
                            let deadtime=DispatchTime.now()+0.1
                            DispatchQueue.main.asyncAfter(deadline: deadtime){
                                self.setValues()
                                let deadtime=DispatchTime.now()+0.1
                                DispatchQueue.main.asyncAfter(deadline: deadtime){
                                    self.setValues()
                                    let deadtime=DispatchTime.now()+0.2
                                    DispatchQueue.main.asyncAfter(deadline: deadtime){
                                        self.calculate()
                                        
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        
        
        
    }
    func setValues(){
        self.slot1.text=fruit.randomElement()!
        self.slot2.text=fruit.randomElement()!
        self.slot3.text=fruit.randomElement()!
        print(self.slot1)
        print(self.slot2)
        print(self.slot3)
    }
    func calculate(){
        if (self.slot1.text==self.slot2.text && self.slot1.text==self.slot3.text){
            score1=score1+300
        }
        else if(self.slot1.text==self.slot2.text || self.slot1.text==self.slot3.text||self.slot2.text==self.slot3.text){
            score1=score1+200
        }
        else{
            score1=score1-50
        }
        score.text=String(score1)
        print("**********************")
        print(self.slot1)
        print(self.slot2)
        print(self.slot3)
        print(self.score)
        print(score1)
        print("**********************")
        
    }
//
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
