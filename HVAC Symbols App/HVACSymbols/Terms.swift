//
//  Terms.swift
//  HVACSymbols
//
//  Created by Student PM on 5/23/22.
//

import Foundation
import UIKit


struct Term {
    var name: String
    var image: UIImage?
}


var symbolTerms: [Term] = [

// Term(name: "", image: UIImage(named: "")),
    
Term(name: "Crossing", image: UIImage(named: "crossing")),
Term(name: "Junction", image: UIImage(named: "junction")),
Term(name: "Power (Factory Wired)", image: UIImage(named: "power(factory)")),
Term(name: "Control (Factory Wired)", image: UIImage(named: "control(factory)")),
Term(name: "Power (Field Installed)", image: UIImage(named: "power(field)")),
Term(name: "Control (Field Installed)", image: UIImage(named: "control(field)")),
Term(name: "Wirenut", image: UIImage(named: "wirenut")),
Term(name: "Normally Closed", image: UIImage(named: "normally closed")),
Term(name: "Ground Connection", image: UIImage(named: "ground connection")),
Term(name: "Normally Open", image: UIImage(named: "normallly open")),
Term(name: "Transformer", image: UIImage(named: "transformer")),
Term(name: "Time Closing", image: UIImage(named: "time closing")),
Term(name: "Thermal Circuit Breaker", image: UIImage(named: "thermal circuit breaker")),
Term(name: "Magnetic Circuit Breaker", image: UIImage(named: "magnetic circuit breaker")),
Term(name: "Time Opening", image: UIImage(named: "time opening")),
Term(name: "Capacitors", image: UIImage(named: "capacitors")),
Term(name: "Fuse", image: UIImage(named: "fuse")),
Term(name: "Fusible Link", image: UIImage(named: "fusible link")),
Term(name: "Terminal", image: UIImage(named: "terminal")),

Term(name: "Single Pole Double Throw", image: UIImage(named: "single pole double throw")),
Term(name: "Disconnect", image: UIImage(named: "disconnect")),
Term(name: "Double Pole Double Throw", image: UIImage(named: "double pole double throw")),
Term(name: "Thermal Overload Coil", image: UIImage(named: "thermal overload coil")),
Term(name: "Limit Switch S. P. D. T. #1", image: UIImage(named: "limit switch s. p. d. t. #1")),
Term(name: "Limit Switch S. P. D. T. #2", image: UIImage(named: "limit switch s. p. d. t. #2")),
Term(name: "Single Pole Single Throw", image: UIImage(named: "single pole single throw")),

Term(name: "Relays", image: UIImage(named: "relays")),
Term(name: "Light", image: UIImage(named: "light")),
Term(name: "Permanent Split Capacitor Motor", image: UIImage(named: "permanent split capacitor motor")),
Term(name: "Single-Phase Compressor Motor", image: UIImage(named: "single-phase compressor motor")),
Term(name: "Three-Phase Compressor Motor", image: UIImage(named: "three-phase compressor motor"))


]
