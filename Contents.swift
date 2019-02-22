//Rey Fernando Castrejón Fernández 2708299
import UIKit

//Comparacion ASCII
func Comparar(_ palabra1: String,_ palabra2: String) -> Bool {
    if (UnicodeScalar(String(palabra1.prefix(1)))!.value > UnicodeScalar(String(palabra2.prefix(1)))!.value ) {
        return true
    }
    return false
}

func Rotacion(_ palabras: [String]) -> Int{
    var index = 0
    for i in stride(from: 0, to: palabras.count - 1, by: 1) {
        if Comparar(palabras[i].lowercased(), palabras[i+1].lowercased()) {
            index = i + 1
            break
        }
    }
    return index
}
var palabrasArray = ["pepe", "retrógrado", "suplantar", "uruguay", "xenofobia", "asíntota", "barba", "baquero", "engendrar", "karla", "oracion"]
print(Rotacion(palabrasArray))
