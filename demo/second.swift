//
//  second.swift
//  demo
//
//  Created by 叶永长 on 12/9/15.
//  Copyright © 2015 YYC. All rights reserved.
//

import UIKit

protocol swiftDelegate:NSObjectProtocol{
    func changeValue(controller:second,string:String)
    
}

class second: UIViewController {
    var delegate:swiftDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        // Do any additional setup after loading the view.
        let rect = CGRect(x: 100, y: 100, width: 100, height: 30)
        let mybutton = UIButton(frame: rect)
        mybutton .addTarget(self, action: "myButtonClick", forControlEvents: UIControlEvents.TouchUpInside)
        mybutton.backgroundColor = UIColor.redColor()
        self.view.addSubview(mybutton)
    }
    func myButtonClick(){
        print("点击")
        if ((delegate) != nil){
            delegate?.changeValue(self, string:"传值" )
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
