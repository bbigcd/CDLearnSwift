//
//  ProductViewController.swift
//  CDLearnSwift
//
//  Created by chendi on 2017/4/9.
//  Copyright © 2017年 chendi. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    var productImageView : UIImageView!
    var productNameLabel : UILabel!
    var but : UIButton!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = view.bounds.size.width
        let height = view.bounds.size.height
        
        
        productImageView = UIImageView.init()
        productImageView.frame = CGRect.init(x: 0, y: 0, width: width, height: height)
        view.addSubview(productImageView)
        if let imageName = product?.fullscreenImageName {
            productImageView.image = UIImage(named: imageName)
        }
        
        productNameLabel = UILabel.init()
        productNameLabel.frame = CGRect.init(x: 0, y: 80, width: width, height: 20)
        productNameLabel.text = product?.name
        productNameLabel.textAlignment = NSTextAlignment.center
        view.addSubview(productNameLabel)
        
        but = UIButton.init(type: UIButtonType.system)
        but.frame = CGRect.init(x: 0, y: 150, width: 100, height: 20)
        but.setTitle("test", for: UIControlState.normal)
        view.addSubview(but)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
