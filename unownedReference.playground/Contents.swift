import UIKit

class Car {
    let model: String
    var mechanic:Mechanic? // Güçlü referans (optional)

    init(model: String) {
        self.model = model
        print("\(model) is being initialized")
    }

    deinit {
        print("\(model) deinitialized")
    }
}

class Mechanic {
    let name: String
    unowned var car: Car // Sahipsiz referans (optional değil)

    init(name: String, car: Car) {
        self.name = name
        self.car = car
        print("\(name) is being initialized")
    }

    deinit {
        print("\(name) deinitialized")
    }
}

var car: Car? = Car(model: "Honda Civic")
var mechanic: Mechanic? = Mechanic(name: "Ahmet", car: car!)

car?.mechanic = mechanic

car = nil // Araba bellekten temizlenir
mechanic = nil // Teknisyen bellekten temizlenir
