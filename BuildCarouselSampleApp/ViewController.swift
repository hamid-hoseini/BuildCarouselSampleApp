//
//  ViewController.swift
//  BuildCarouselSampleApp
//
//  Created by Hamid Hoseini on 11/7/20.
//

import UIKit
import iCarousel

class ViewController: UIViewController, iCarouselDataSource {

    let myCarousel: iCarousel = {
        let view = iCarousel()
        //view.type = .coverFlow
        view.type = .rotary
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(myCarousel)
        myCarousel.dataSource = self
        //myCarousel.autoscroll = -0.5
        myCarousel.frame = CGRect(x: 0,
                                  y: 200,
                                  width: view.frame.size.width,
                                  height: 400)
    }

    func numberOfItems(in carousel: iCarousel) -> Int {
        return 7
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0,
                                        y: 0,
                                        width: self.view.frame.size.width/1.4,
                                        height: 300))
        view.backgroundColor = .red
        
        let imageView = UIImageView(frame: view.bounds)
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "car\(index+1)")
        return view
    }

}

