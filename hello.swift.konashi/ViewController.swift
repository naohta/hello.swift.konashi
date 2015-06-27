//
//  ViewController.swift
//  hello.swift.konashi
//
//  Created by Naohiro OHTA on Jun26,2015.
//  Copyright © 2015 Naohiro OHTA. All rights reserved.
//

import UIKit


class ViewController: UIViewController {


    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        // Konashi
        Konashi.initialize()
        Konashi.addObserver(self, selector: "ready", name: KonashiEventReadyToUseNotification)

    }


    // MARK: - Action

    @IBAction func findKonashiButtonDidTouchUpInside(sender: AnyObject) {
        Konashi.find()
    }


    func ready() {
        print(NSDate().description)

//        Konashi.pwmMode(KonashiDigitalIOPin.LED2, mode: KonashiPWMMode.EnableLED)
//        Konashi.pwmPeriod(KonashiDigitalIOPin.LED2, period: 1_000_000)
//        Konashi.pwmDuty(KonashiDigitalIOPin.LED2, duty: 500_000)
//        Konashi.pwmMode(KonashiDigitalIOPin.LED2, mode: KonashiPWMMode.Enable)


//        Konashi.pwmMode(KonashiDigitalIOPin.LED3, mode: KonashiPWMMode.EnableLED)
//        Konashi.pwmLedDrive(KonashiDigitalIOPin.LED3, dutyRatio: 50)

        let a = Konashi.pinMode(KonashiDigitalIOPin.DigitalIO3, mode: KonashiPinMode.Output)
        let b = Konashi.digitalWrite(KonashiDigitalIOPin.DigitalIO3, value: KonashiLevel.High)

        dump(a, name: "a", indent: 4, maxDepth: 20, maxItems: 100)
        dump(b, name: "b", indent: 4, maxDepth: 20, maxItems: 100)


    }

}

