//
//  ViewController.swift
//  tests
//
//  Created by Mateusz Florczak on 12/05/16.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var km: UITextField!
    @IBOutlet weak var mile: UITextField!

    @IBAction func kmNaMile(sender: UIButton) {
        zamien(km, cel: mile, typ: .kmNaMile)
    }
    @IBAction func mileNaKm(sender: UIButton) {
        zamien(mile, cel: km, typ: .mileNaKm)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func zamien(zrodlo: UITextField, cel: UITextField, typ: TypKonwersji) {
        guard let wartosc: Float = Float(zrodlo.text!) else { return }
        if let wartoscNowa: Float = Konwerter.sharedInstance.zamien(wartosc, dlaTypuKonwersji: typ) {
            cel.text = String(wartoscNowa)
        }
    }
}