import UIKit

class Car {
    let model: String
    var driver: Driver? //Araba sürücüsü (optional)

    init(model: String) {
        self.model = model
        print("\(model) is being initialized")
    }

    deinit {
        print("\(model) deinitialized")
    }
}

class Driver {
    let name: String
    var car: Car? // Sürücünün sahip olduğu araba (optional)

    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }

    deinit {
        print("\(name) deinitialized")
    }
}

var car: Car? = Car(model: "Honda Civic")
var driver: Driver? = Driver(name: "Ahmet")

car = nil
driver = nil

/* Çıktı

Honda Civic is being initialized
Ahmet is being initialized
 
*/
