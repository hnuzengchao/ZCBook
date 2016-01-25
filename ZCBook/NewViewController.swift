//
//  NewViewController.swift
//  ZCBook
//
//  Created by 曾超 on 16/1/25.
//  Copyright © 2016年 zengchao. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {
    //新建书评按钮
    var newButton1 = UIButton()
    var newButton2 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //隐藏导航栏
        self.navigationController?.navigationBarHidden = true

        //+号按钮
        loadNewButton1()
        
        //新建书评按钮
        loadNewButton2()
    }

    func loadNewButton1(){
        self.newButton1.frame = CGRectMake(0,20,30,30)
        self.newButton1.setImage(UIImage(named: "plus circle"), forState: UIControlState.Normal)
        self.newButton1.addTarget(self, action: "push", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(self.newButton1)
    }
    
    func loadNewButton2(){
        self.newButton2.frame = CGRectMake(40, 20, 80, 30)
        self.newButton2.titleLabel?.font = UIFont.systemFontOfSize(15)
        self.newButton2.setTitle("新建书评", forState: UIControlState.Normal)
        self.newButton2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        self.newButton2.addTarget(self, action: "push", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(self.newButton2)
    }
    //按钮的action
    func push(){
        //ViewController转场方式 UIModalTransitionStyleCoverVertical 默认值，从下向上覆盖
        //UIModalTransitionStyleFlipHorizontal 水平翻转
        //UIModalTransitionStylePartialCurl 书页翻开显示下面的视图
        let newListVC = NewListViewController()
        newListVC.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        self.presentViewController(newListVC, animated: true, completion: nil)
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