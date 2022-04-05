switch sender.selectedSegmentIndex {
case 0:
    lblEspecialidad.text = "Ha seleccionado moviles"
        //se invoca el contrauctor de uimage (names: String (como se llama el recurso))
    imgEspecialidad.image = UImage(named: "mov")

case 1:
    lblEspecialidad.text = "Ha seleccionado Conectividad"
        //se invoca el contrauctor de uimage (names: String (como se llama el recurso))
    imgEspecialidad.image = UImage(named: "redes")
    
case 2:
lblEspecialidad.text = "Ha seleccionado Industria 4.0"
        //se invoca el contrauctor de uimage (names: String (como se llama el recurso))
    imgEspecialidad.image = UImage(named: "industria")
    
case 3:
lblEspecialidad.text = "Ha seleccionado ninguno"
        //se invoca el contrauctor de uimage (names: String (como se llama el recurso))
    imgEspecialidad.image = UImage(named: "tec")
    
default:
    
}