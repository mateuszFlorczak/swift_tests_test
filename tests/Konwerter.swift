//
//  Konwerter.swift
//  tests
//
//  Created by Mateusz Florczak on 12/05/16.
//  Copyright © 2016 test. All rights reserved.
//

import Foundation

public class Konwerter {
    static let sharedInstance = Konwerter()

    func zamien(wartosc: Float, dlaTypuKonwersji typ: TypKonwersji) -> Float {
        var wynik: Float

        switch typ {
        case .kmNaMile:
            wynik = wartosc * 0.621371192
        case .mileNaKm:
            wynik = wartosc * 1.609344
        }

        return wynik
    }
}

public enum TypKonwersji {
    case kmNaMile
    case mileNaKm
}