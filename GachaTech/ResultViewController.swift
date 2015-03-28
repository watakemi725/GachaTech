//
//  ResultViewController.swift
//  GachaTech
//
//  Created by Takemi Watanuki on 2015/03/23.
//  Copyright (c) 2015年 your name. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet var haikeiImageView: UIImageView!
    //一番後ろの背景画像を表示するためのUIImageView
    
    @IBOutlet var monsterImageView: UIImageView!
    //一番表面のモンスター画像を表示するためのUIImageView
    
    var monsterArray: [UIImage]!
    //モンスター画像を保存しておくUIImage型の配列
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var number = Int(rand() % 9 + 1)
        //0〜9までの数字の間で乱数(ランダム)を発生させる、なおかつInt型にする
        //0から数字を数えるのは
        //配列の中で最初の画像を指定したいときは0番目と数えるから！！
        
        monsterArray = [UIImage(named: "monster001.png")!,
            UIImage(named: "monster002.png")!,
            UIImage(named: "monster003.png")!,
            UIImage(named: "monster004.png")!,
            UIImage(named: "monster005.png")!,
            UIImage(named: "monster006.png")!,
            UIImage(named: "monster007.png")!,
            UIImage(named: "monster008.png")!,
            UIImage(named: "monster009.png")!,
            UIImage(named: "monster010.png")!,
        ]
        //monseterArray配列に画像を10枚追加(保存)する
        
        monsterImageView.image = monsterArray[number]
        //monsterArrayの中のnumber番目を表示させる(ランダムに表示させる)
        
        // numberの数字により背景画像を切り替える
        if number == 9 {
            
            haikeiImageView.image = UIImage (named: "gold.png");
            
        }else if number == 8 || number == 7 {
            
            haikeiImageView.image = UIImage (named: "red.png");
            
        }else if number <= 6 {
            
            haikeiImageView.image = UIImage (named: "blue.png");
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //このResultViewControllerが表示される度に呼び出すメソッド
    override func viewDidAppear(animated: Bool) {
        
        
        var animation = CABasicAnimation(keyPath: "transform")
        //アニメーションの中でもtransform(変形)させるキーパスを指定
        
        animation.fromValue = NSNumber(double: 0)
        //アニメーションの開始時の数値
        
        animation.toValue = NSNumber(double: 2 * M_PI)
        //アニメーション終了時の数値
        // M_PI とは角度の 180° を意味する
        
        animation.valueFunction = CAValueFunction (name: kCAValueFunctionRotateZ)
        //Z軸を中心としたアニメーションにする
        
        animation.duration = 5
        //アニメーションの速さを指定する
        
        animation.repeatCount = Float.infinity
        //アニメーションを何回繰り返すか決める (今回の場合は無限に繰り返す)
        
        haikeiImageView.layer.addAnimation(animation, forKey: nil)
        //どのレイヤーをアニメーションさせるか指定する
    }
    
    
    @IBAction func modoru() {
        self.dismissViewControllerAnimated(true, completion: nil)
        //segue のアニメーションをcross disolve
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
