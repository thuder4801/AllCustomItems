//
//  PopUpView.swift
//  TryPopUp
//
//  Created by Pakin on 12/18/15.
//  Copyright © 2015 ExploPack. All rights reserved.
//

import UIKit

class PopUpView: UIView {
    
/*  For Creating the View externally
    
    @IBOutlet weak var popUpView:PopUpView!
    @IBOutlet weak var popUpImg:UIImageView!
    @IBOutlet weak var popUpMessage:UILabel!
    
    public func showInView(aView: PopUpView!, withImage image : UIImage!, withMessage message: String!, animated: Bool) {
    
        aView.addSubview(self)
        popUpImg!.image = image
        popUpMessage!.text = message
        
        if animated {
            self.showAnimation(
        }
    }
*/
    
    @IBAction func onRemovePressed(sender: AnyObject) {
        removeAnimate()
    }
    
    func configurePopUp() {
        self.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.6)
        self.layer.cornerRadius = 10
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSizeMake(0.0, 0.0)
    }
    
    func showAnimation() {
        self.hidden = false
        self.transform = CGAffineTransformMakeScale(1.3, 1.3)
        self.alpha = 0.0
        UIView.animateWithDuration(0.5, animations: {
            self.alpha = 1.0
            self.transform = CGAffineTransformMakeScale(1.0, 1.0)
        })
    }
    
    func removeAnimate() {
        UIView.animateWithDuration(0.25, animations: {
            self.transform = CGAffineTransformMakeScale(1.3, 1.3)
            self.alpha = 0.0;
            }, completion:{(finished : Bool)  in
                if (finished) {
                    // self.removeFromSuperview()
                    self.hidden = true
                }
        })
    }
    
}
