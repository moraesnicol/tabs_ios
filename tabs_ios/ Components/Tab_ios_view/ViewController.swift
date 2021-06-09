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
        configureInitialInfo()
        configureSegmentedControl()
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
    
    func configureSegmentedControl() {
        
       segmentedControlOutlet.removeBorder()
       segmentedControlOutlet.addUnderlineForSelectedSegment()
       segmentedControlOutlet.selectedSegmentIndex = 0
        
        let titleTextAttributes0 = [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        segmentedControlOutlet.setTitleTextAttributes(titleTextAttributes0, for:.normal)
        
        let titleTextAttributes1 = [NSAttributedString.Key.foregroundColor: UIColor.purple]
        segmentedControlOutlet.setTitleTextAttributes(titleTextAttributes1, for:.selected)
        
    }
    
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var TextTitleLabel: UILabel!
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var segmentedControlOutlet: UISegmentedControl!
    
    @IBAction func segmentedControlOutlet(_ sender: UISegmentedControl) {
        
        if segmentedControlOutlet.selectedSegmentIndex == 0 {
            segmentedControlOutlet.addUnderlineForSelectedSegment()
            TextTitleLabel.text =
               "O financiamento "
  
            TextLabel.text =
               "A empresa que garante o financiamento do seu empréstimo é a KEO PERU SAC por meio da Super Digital"
        }
        else  if segmentedControlOutlet.selectedSegmentIndex == 1 {
            
            segmentedControlOutlet.addUnderlineForSelectedSegment()
            TextTitleLabel.text =
                   "O financiamento "
      
                TextLabel.text =
                   "A empresa que garante o financiamento do seu empréstimo é a KEO PERU SAC por meio da Super Digital"
        }
        
        
      //  switch segmentedControlOutlet.selectedSegmentIndex{
      //      case 0:
                //segmentedControlOutlet.addUnderlineForSelectedSegment()
      //          TextTitleLabel.text =
      //              "O financiamento "
      //
      //          TextLabel.text =
     //               "A empresa que garante o financiamento do seu empréstimo é a KEO PERU SAC por meio da Super Digital"
     //        case 1:
              //  segmentedControlOutlet.removeBorder()
             //   segmentedControlOutlet.addUnderlineForSelectedSegment()
     //           TextTitleLabel.text =
      //              "Termos de uso "
     //           TextLabel.text = " Você se compromete a pagar o financiamento todo 5ª dia útil do mês, caso contrário irá pagar multa de 99% a.m"
     //       default:
               // segmentedControlOutlet.addUnderlineForSelectedSegment()
     //           TextLabel.text =
     //               "O financiamento A empresa que garante o financiamento do seu empréstimo é a KEO PERU SAC por meio da Super Digital"
     //           break
        }
    
    
    
    func configureInitialInfo() {
       // segmentedControlOutlet.addUnderlineForSelectedSegment()
        iconImage.image = #imageLiteral(resourceName: "financeicon.png")
        TextTitleLabel.text = "O financiamento"
        TextLabel.text =
            "O financiamento A empresa que garante o financiamento do seu empréstimo é a KEO PERU SAC por meio da Super Digital"
    
    }
    

    
    
}

