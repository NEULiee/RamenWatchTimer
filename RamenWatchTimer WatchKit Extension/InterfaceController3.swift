//
//  InterfaceController3.swift
//  RamenWatchTimer WatchKit Extension
//
//  Created by Ha Neul Iee on 2021/07/10.
//

import WatchKit
import Foundation

class InterfaceController3: WKInterfaceController {

    @IBOutlet weak var timer: WKInterfaceTimer!
    @IBOutlet weak var nextButton: WKInterfaceButton!
    
    var doneTimer: Timer?
    
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
        
        nextButton.setEnabled(false)
        
        timer.setDate(Date(timeIntervalSinceNow: 60))
        timer.start()
        
        doneTimer = Timer.scheduledTimer(withTimeInterval: 59, repeats: false, block: { doneTimer in
            WKInterfaceDevice().play(.notification)
            self.nextButton.setEnabled(true)
        })
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
