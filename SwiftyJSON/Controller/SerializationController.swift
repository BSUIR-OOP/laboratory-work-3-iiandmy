//
//  SerializationController.swift
//  SwiftyJSON
//
//  Created by IlyaCool on 21.05.22.
//

import UIKit

class SerializationController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func serializeButtonPressed(_ sender: Any) {
        let serializationResult = SerializationService.serialize(objects: TransportStorage.instance.transport)
        FileService.instance.writeInFile(jsonString: serializationResult)
    }
    
    @IBAction func deserializeButtonPressed(_ sender: Any) {
        guard let readedJson = FileService.instance.readFromFile() else { return }
        guard let result = SerializationService.deserialize(jsonString: readedJson) else { return }
    }
    
    @IBAction func clearFilePressed(_ sender: Any) {
        FileService.instance.clearFile()
    }
    
}
