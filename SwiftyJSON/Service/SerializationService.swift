//
//  SerializationService.swift
//  SwiftyJSON
//
//  Created by IlyaCool on 21.05.22.
//

import UIKit

class SerializationService {
    private init() {}
    
    private let pattern = """
    {
        "type": ".+",
        "body": {
            "name": ".+",
            "maxSpeed": [0-9]+,
            "weight": [0-9]+[.][0-9]+
        }
    }
    """
    
    static func serialize(objects: [Serializable]) -> String {
        var result = "[\n"
        objects.forEach { object in
            result += "\(object.serialize()),\n"
        }
        result += "]"
        
        return result
    }
    
    static func deserialize(jsonString json: String) -> [Serializable]? {
        var result = [Serializable]()
        
        json.split(separator: "\n").forEach { entrance in
            
        }
        
        return result
    }
}
