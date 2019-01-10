//
//  Car.swift
//  Classes and Objects
//
//  Created by Daniel Wise on 2019-01-10.
//  Copyright © 2019 WiseDev. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    var colour = "Black"
    var numberOfSeats = 5
    var typeOfCar: CarType = .Coupe
    init() {
    }
    convenience init(customerChosenColour: String) {
        self.init()
        colour = customerChosenColour
    }
    func drive() {
        print("car is moving")
    }
}

class SelfDrivingCar : Car {
    //subclass of Car class
    var destination: String?
    override func drive() {
        super.drive()
        if let userSetDestination = destination {
        print("driving towards"+userSetDestination)
        }
    }
}
