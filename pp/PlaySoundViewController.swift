//
//  PlaySoundViewController.swift
//  pp
//
//  Created by Maurizio Pietrantuono on 16/10/2017.
//  Copyright © 2017 Maurizio Pietrantuono. All rights reserved.
//

import UIKit

class PlaySoundViewController: UIViewController {
    var url:URL!
    
    @IBOutlet weak var slow: UIButton!
    
    @IBOutlet weak var fast: UIButton!
    
    @IBOutlet weak var high: UIButton!
    
    @IBOutlet weak var low: UIButton!
    
    @IBOutlet weak var echo: UIButton!
    
    @IBOutlet weak var reverb: UIButton!
    
    @IBOutlet weak var stop: UIButton!
    
    @IBAction func play(_ sender: UIButton){
        print("play")
    }

    @IBAction func stop(_ sender: UIButton){
        print("stop")
    }

    
    
    override func viewWillAppear(_ animated: Bool) {
        slow.contentMode = .center
        slow.imageView?.contentMode = .scaleAspectFit
        fast.contentMode = .center
        fast.imageView?.contentMode = .scaleAspectFit
        high.contentMode = .center
        high.imageView?.contentMode = .scaleAspectFit
        low.contentMode = .center
        low.imageView?.contentMode = .scaleAspectFit
        echo.contentMode = .center
        echo.imageView?.contentMode = .scaleAspectFit
        reverb.contentMode = .center
        reverb.imageView?.contentMode = .scaleAspectFit

        
    }
    
}
