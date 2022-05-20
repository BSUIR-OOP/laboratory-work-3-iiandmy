//
//  Transport.swift
//  SwiftyJSON
//
//  Created by IlyaCool on 21.05.22.
//

import UIKit

protocol Serializable {
    var transportType: String { get }
    func serialize() -> String
}

class Transport: NSObject, Serializable {
    var transportType: String
    
    var name: String
    var maxSpeed: Int
    var weight: Float
    
    fileprivate init(transportType: String, name: String, maxSpeed: Int, weight: Float) {
        self.transportType = transportType
        self.name = name
        self.maxSpeed = maxSpeed
        self.weight = weight
    }

    func serialize() -> String {
        return """
        {
            "type": "\(transportType)",
            "body": {
                "name": "\(name)",
                "maxSpeed": \(maxSpeed),
                "weight": \(weight)
            }
        }
        """
    }

}

class SeaTransport: Transport {
    init(name: String, maxSpeed: Int, weight: Float) {
        super.init(transportType: "SeaTransport", name: name, maxSpeed: maxSpeed, weight: weight)
    }
}

class RoadTransport: Transport {
    init(name: String, maxSpeed: Int, weight: Float) {
        super.init(transportType: "RoadTransport", name: name, maxSpeed: maxSpeed, weight: weight)
    }
}

class AirTransport: Transport {
    init(name: String, maxSpeed: Int, weight: Float) {
        super.init(transportType: "AirTransport", name: name, maxSpeed: maxSpeed, weight: weight)
    }
}

class HorseDrawnTransport: Transport {
    init(name: String, maxSpeed: Int, weight: Float) {
        super.init(transportType: "HorseDrawnTransport", name: name, maxSpeed: maxSpeed, weight: weight)
    }
}

class NonMechanicalTransport: Transport {
    init(name: String, maxSpeed: Int, weight: Float) {
        super.init(transportType: "NonMechanicalTransport", name: name, maxSpeed: maxSpeed, weight: weight)
    }
}
