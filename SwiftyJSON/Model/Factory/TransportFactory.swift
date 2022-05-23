//
//  TransportFactory.swift
//  SwiftyJSON
//
//  Created by IlyaCool on 21.05.22.
//

import UIKit

enum TransportFactoryError: Error {
    case invalidTransportType
}

class TransportFactory {
    static let instance = TransportFactory()
    private var transport = [String: (String, Int, Double) -> Transport]()
    
    private init() {
        transport["Sea Transport"] = { name, speed, weight in
            return SeaTransport(name: name, maxSpeed: speed, weight: weight)
        }
        transport["Road Transport"] = { name, speed, weight in
            return RoadTransport(name: name, maxSpeed: speed, weight: weight)
        }
        transport["Air Transport"] = { name, speed, weight in
            return AirTransport(name: name, maxSpeed: speed, weight: weight)
        }
        transport["Horse Drawn Transport"] = { name, speed, weight in
            return HorseDrawnTransport(name: name, maxSpeed: speed, weight: weight)
        }
        transport["Non-Mechanical Transport"] = { name, speed, weight in
            return NonMechanicalTransport(name: name, maxSpeed: speed, weight: weight)
        }
    }
    
    func getKeys() -> [String] {
        return transport.keys.sorted()
    }
    
    func getTransport(ofType type: String, withName name: String, speed: Int, weight: Double) throws -> Transport {
        guard let result = transport[type] else { throw TransportFactoryError.invalidTransportType }
        return result(name, speed, weight)
    }
}
