//
//  ViewController.swift
//  ScrollTest
//
//  Created by Kishor Pahalwani on 26/03/18.
//  Copyright © 2018 Kishor Pahalwani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    var titleView: UIScrollView?
    var contentView: UIScrollView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setScrollLabel()
    }
    
    fileprivate func setScrollLabel() {
        
        /*[self.view setBackgroundColor:[UIColor lightGrayColor]];
         [self setTitle:@"My Title"];
         titleView = [[UIScrollView alloc] initWithFrame:CGRectMake(0.0, 0.0, 100.0, 44.0)];
         [titleView setContentSize:CGSizeMake(0.0, 88.0)];
         [self.view addSubview:contentView];
         UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 44.0, CGRectGetWidth(titleView.frame), 44.0)];
         [titleLabel setTextAlignment:NSTextAlignmentCenter];
         [titleLabel setFont:[UIFont boldSystemFontOfSize:17.0]];
         [titleLabel setText:self.title];
         [titleView addSubview:titleLabel];
         contentView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
         [contentView setContentSize:CGSizeMake(0.0, 4000.0)];
         [contentView setDelegate:self];
         [self.view addSubview:contentView];
         UILabel *contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, CGRectGetWidth(self.view.bounds), 44.0)];
         [contentLabel setTextAlignment:NSTextAlignmentCenter];
         [contentLabel setFont:[UIFont boldSystemFontOfSize:17.0]];
         [contentLabel setText:self.title];
         [contentView addSubview:contentLabel];*/
        
        self.title = "My Title Check 12 klkdls dklsakdl klcjdc jkds cmdklmc m dkmc mkl dc mkldm cml dlcm kd mclkdm cmklmdklc kdmckld cmdklcm dkmc kdmc ldmcl dmc mdlk m"
        titleView = UIScrollView.init(frame: CGRect(x: 0, y: 0, width: 100, height: 44))
        titleView?.contentSize = CGSize(width: 0, height: 88)
        
        let titleLabel = UILabel.init(frame: CGRect(x: 0, y: 44, width: (titleView!.frame.size.width), height: 44))
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 17)
        titleLabel.numberOfLines = 0
        titleLabel.text = self.title
        titleView?.addSubview(titleLabel)
        self.navigationItem.titleView = titleView;
        
        contentView = UIScrollView.init(frame: self.view.bounds)
        contentView?.contentSize = CGSize(width: 0, height: 4000)
        contentView?.delegate = self
        self.view.addSubview(contentView!)
        
        let contentLabel = UILabel.init(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 100))
        contentLabel.textAlignment = .center
        contentLabel.font = UIFont.boldSystemFont(ofSize: 17)
        contentLabel.numberOfLines = 0
        contentLabel.text = self.title
        contentView?.addSubview(contentLabel)
        
        self.view.addSubview(contentView!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let contentOffset: CGPoint = CGPoint(x: 0.0, y:min(scrollView.contentOffset.y + 64.0, 44))
        titleView?.contentOffset = contentOffset
        //MIN(scrollView.contentOffset.y + 64.0, 44.0))//CGPointMake(0.0, MIN(scrollView.contentOffset.y + 64.0, 44.0));
    }
}

