//
//  ViewController.swift
//  scrollview and pages
//
//  Created by THANIKANTI VAMSI KRISHNA on 1/4/20.
//  Copyright © 2020 THANIKANTI VAMSI KRISHNA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainScroll: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let images = ["1.jpeg","2.jpeg","3.jpeg","4.jpeg","5.jpeg","6.jpeg","7.jpeg","8.jpeg","9.jpeg","10.jpeg","11.jpeg","12.jpeg","13.jpeg","14.jpeg","15.jpeg","16.jpeg","17.jpeg","18.jpeg","19.jpeg","20.jpeg","21.jpeg","22.jpeg",]
        mainScroll.isPagingEnabled = true
        
        view.setNeedsLayout()
        view.layoutIfNeeded()
        let scrollWidth = mainScroll.frame.size.width
        let scrollHeight = mainScroll.frame.size.height
        var posX: CGFloat = 0
        
        for img in images {
        let imgView = UIImageView(frame: CGRect(x: posX, y: 0, width:
        scrollWidth, height: scrollHeight))
        imgView.image = UIImage(named: img)
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        mainScroll.addSubview(imgView)
        mainScroll.contentSize = CGSize(width: scrollWidth * CGFloat(images.count), height: scrollHeight)
        posX = posX + scrollWidth
            
        }
    }

}

