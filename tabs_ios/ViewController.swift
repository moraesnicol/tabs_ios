//
//  ViewController.swift
//  tabs_ios
//
//  Created by Gabriel on 08/06/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Termos e condições"
    
        
        configureTopBar()
        
    }
    
    
    //
    private func configureTopBar() {
        let buttonRightIcon = UIImage(named: "closebutton")
        let buttonLeftIcon = UIImage(named: "backbutton")
        
            
        let navigationItem = navigationItem
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: buttonRightIcon, style: UIBarButtonItem.Style.plain, target: self, action: nil)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: buttonLeftIcon, style: UIBarButtonItem.Style.plain, target: self, action: nil)
        
        
        let navigationBar = navigationController?.navigationBar
       
        navigationBar?.barTintColor = UIColor.white
        navigationBar?.isTranslucent = true
        navigationBar?.shadowImage = UIImage()
        navigationBar?.titleTextAttributes = [.foregroundColor: UIColor.black.withAlphaComponent(0.5)]
        
     
        
  
        
       //
        
        
    }
    
}

