//
//  ViewController3.swift
//  SlotGame
//
//  Created by Bugra Kalayci on 3/12/19.
//  Copyright © 2019 Bugra Kalayci. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    
    @IBAction func back(_ sender: UIButton) {
//        let vc = page2ViewController(nibName: "page2ViewController", bundle: nil)
//        vc.score1 = addValue
//
//        print(vc.score1)
//        navigationController?.pushViewController(vc, animated: true)
        self.performSegue(withIdentifier: "returnadd", sender: self)

    }
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    var curIndex1=0;
    var curIndex2=0;
    var addValue=0;
    var extra=0;
    var dices=["Dice1","Dice2","Dice3","Dice4","Dice5","Dice6"]
    override func viewDidLoad() {
        super.viewDidLoad()
//        addValue=addValue+1
        print(addValue)
//        dice1.image=UIImage(named:"Dice2")
//        let vc = page2ViewController()
//        addValue=vc.score1
        // Do any additional setup after loading the view.
    }
    
   
        //        let randomInt = Int.random(in: 1..<5)
//
    
    func setValues(){
        //        let dic1,dic2
        let image1=dices.randomElement()!
//        print(image1)
        
//        let index=find(value: image1, in: dices)
        if let i = dices.firstIndex(of: image1) {
            curIndex1=i+1
        }
        let image2=dices.randomElement()!
//        let index1=find(value: image2, in: dices)
        if let i = dices.firstIndex(of: image2) {
            curIndex2=i+1
        }
        self.dice1.image=UIImage(named:image1)
        self.dice2.image=UIImage(named:image2)
//        print(curIndex1)
//        print(curIndex2)
        
        //       sel.dice1.imageview.image=(name:)
    }
    func calculate(_ a: Int, _ b: Int){
        addValue=addValue+(a+b)*50
//        print(addValue)
    }
    @IBAction func RollButton(_ sender: UIButton) {
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
                                        self.setValues()
                                        self.calculate(self.curIndex1,self.curIndex2)
//                                        let vc = page2ViewController()
//                                        print (vc.score1)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        //                self.dice1.image=UIImage(named:"Dice3")
        
    }
    //
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
        if(segue.identifier == "returnadd"){
            let displayVC = segue.destination as! page2ViewController
            displayVC.score1 = addValue
        }
     }
     
    
}
