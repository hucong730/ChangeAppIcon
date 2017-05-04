//
//  ViewController.swift
//  ChangeIcon
//
//  Created by 胡聪 on 2017/5/4.
//  Copyright © 2017年 zhiwo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let application: UIApplication! = {
        return UIApplication.shared
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeNewIcon(_ sender: Any) {
        if application.supportsAlternateIcons { //判断是否支持备用图标
            application.setAlternateIconName("DownloadAppIcon") { (error) in
                print(error?.localizedDescription ?? "")
            }
        }
    }
    
    @IBAction func changeOldIcon(_ sender: Any) {
        if application.supportsAlternateIcons {
            //当备用图标为nil时，表示使用原始app图标
            application.setAlternateIconName(nil) { (error) in
                print(error?.localizedDescription ?? "")
            }
        }
    }
}

