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


    // MARK: - Event

    func ready() {

        print("\(NSDate().description) Peripheral:\(Konashi.peripheralName())  is ready.")

        Konashi.pinMode(KonashiDigitalIOPin.DigitalIO3, mode: KonashiPinMode.Output)
        Konashi.digitalWrite(KonashiDigitalIOPin.DigitalIO3, value: KonashiLevel.High)

    }

}

