//
//  TabsGroupStack.swift
//  tabs_ios
//
//  Created by Gabriel on 08/06/21.
//

import UIKit

class TabsGroupView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
     
        
    }
    
    
    
    
    
   
        @IBAction func didChangeSegment(_ sender: UISegmentedControl) {
        
        
    if  sender.selectedSegmentIndex == 0 {
        view.backgroundColor = .red
        }
        if  sender.selectedSegmentIndex == 1 {
            view.backgroundColor = .red
        }
        if  sender.selectedSegmentIndex == 2 {
            view.backgroundColor = .yellow
        }
        if  sender.selectedSegmentIndex == 3 {
            view.backgroundColor = .blue
        }
        if  sender.selectedSegmentIndex == 4 {
            
        }
    
     }
    
    
    
    
    
    
    
}
