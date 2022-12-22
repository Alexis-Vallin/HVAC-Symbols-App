//
//  Symbols.swift
//  HVACSymbols
//
//  Created by Student PM on 5/16/22.
//

import Foundation
import UIKit

struct Symbol {
    var name: String
    var image: UIImage?
}



var symbolData: [Symbol] = [
    
    
       
Symbol(name: "Capacitors", image: UIImage(named: "capacitors")),
    
Symbol(name: "Control (Factory Wired)", image: UIImage(named: "control(factory)")),
    
Symbol(name: "Control (Field Installed)", image: UIImage(named: "control(field)")),
    
Symbol(name: "Crossing", image: UIImage(named: "crossing")),
    
Symbol(name: "Disconnect", image: UIImage(named: "disconnect")),
    
Symbol(name: "Double Pole Double Throw", image: UIImage(named: "double pole double throw")),    
    
Symbol(name: "Fuse", image: UIImage(named: "fuse")),
    
Symbol(name: "Fusible Link", image: UIImage(named: "fusible link")),
    
Symbol(name: "Ground Connection", image: UIImage(named: "ground connection")),
    
Symbol(name: "Junction", image: UIImage(named: "junction")),
    
Symbol(name: "Light", image: UIImage(named: "light")),

Symbol(name: "Limit Switch S. P. D. T. #1", image: UIImage(named: "limit switch s. p. d. t. #1")),
    
Symbol(name: "Limit Switch S. P. D. T. #2", image: UIImage(named: "limit switch s. p. d. t. #2")),
    
Symbol(name: "Magnetic Circuit Breaker", image: UIImage(named: "magnetic circuit breaker")),
    
Symbol(name: "Normally Open", image: UIImage(named: "normallly open")),
    
Symbol(name: "Normally Closed", image: UIImage(named: "normally closed")),
    
Symbol(name: "Permanent Split Capacitor Motor", image: UIImage(named: "permanent split capacitor motor")),
    
Symbol(name: "Power (Factory Wired)", image: UIImage(named: "power(factory)")),
    
Symbol(name: "Power (Field Installed)", image: UIImage(named: "power(field)")),
    
Symbol(name: "Relays or Solenoids", image: UIImage(named: "relays or solenoids")),

Symbol(name: "Single Pole Double Throw", image: UIImage(named: "single pole double throw")),
    
Symbol(name: "Single Pole Single Throw", image: UIImage(named: "single pole single throw")),
    
Symbol(name: "Single-Phase Compressor Motor", image: UIImage(named: "single-phase compressor motor")),

Symbol(name: "Terminal", image: UIImage(named: "terminal")),
    
Symbol(name: "Thermal Circuit Breaker", image: UIImage(named: "thermal circuit breaker")),
    
Symbol(name: "Thermal Overload Coil", image: UIImage(named: "thermal overload coil")),
    
Symbol(name: "Three-Phase Compressor Motor", image: UIImage(named: "three-phase compressor motor")),

Symbol(name: "Time Closing", image: UIImage(named: "time closing")),

Symbol(name: "Time Opening", image: UIImage(named: "time opening")),

Symbol(name: "Transformer", image: UIImage(named: "transformer")),

Symbol(name: "Wirenut", image: UIImage(named: "wirenut"))
    
]


/*
func findSymbol(_ name: String) -> Int {
    for i in 0..<symbolData.count {
        if symbolData[i].name == name {
            return i
        }
    }
    return 0
}

*/



 /*
let symbols = [
    "capacitors",
    "control(factory)",
    "control(field)",
    "crossing",
    "fuse",
    "ground connection",
    "junction",
    "normallly open",
    "normally closed",
    "power(factory)",
    "power(field)",
    "terminal",
    "wirenut"
]
*/



