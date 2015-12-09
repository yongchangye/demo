//
//  ViewController.swift
//  demo
//
//  Created by 叶永长 on 12/8/15.
//  Copyright © 2015 YYC. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,swiftDelegate{ //这里不要忘记引用代理
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        let buttonrect = CGRect(x: 100, y: 100, width: 100, height: 30)
        let button = UIButton(frame: buttonrect)
        button.backgroundColor = UIColor.redColor()
        button.layer.cornerRadius = 5
        button.setTitle("button", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonClick", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
    }
    func buttonClick(){//button的跳转方法
        print("aa")
        let secondController = second()
        secondController.delegate = self
        self.navigationController!.pushViewController(secondController, animated: true)
    }
    
    func changeValue(controller: second, string: String) {//代理方法实现
        print("\(string)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

