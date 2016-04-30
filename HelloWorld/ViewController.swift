//
//  ViewController.swift
//  HelloWorld
//
//  Created by XCODE on 2015/11/10.
//  Copyright © 2015年 Nick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isShow:Bool = false
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        let frame = self.view.frame
        
        //==============  bt  ==================
        let bt = UIButton(frame: CGRect(x: 0, y: 0, width:frame.size.width , height: frame.size.height/10))
        bt.center = CGPoint(x: frame.size.width/2, y: frame.size.height/2)
        bt.setTitle("按我", forState: .Normal)
        bt.addTarget(self, action: #selector(ViewController.onBtAction(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(bt)
        
        //==============  label  ==================
        label = UILabel(frame: CGRect(x: 0, y: 0, width: frame.size.width/2, height: frame.size.height/10))
        label.center = CGPoint(x: frame.size.width/2, y: bt.center.y + bt.frame.size.height/2 + label.frame.size.height/2 + 50)
        label.textAlignment = .Center
        label.textColor = UIColor.redColor()
        label.font = UIFont.systemFontOfSize(label.frame.size.height/2)
        label.adjustsFontSizeToFitWidth = true
        self.view.addSubview(label)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- onBtAction
    //-----------------
    func onBtAction(sender:UIButton) -> Void {
        
        isShow = isShow == false ? true : false
        label.text = isShow == false ? "" : "HELLO SWIFT"
    }


}


//control + 左鍵 對齊用