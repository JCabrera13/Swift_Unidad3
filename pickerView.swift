//controller.
import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPIckerViewDataSource{
    
    //se agregara el arreglo de maenra constante.
    let arreglo = [["1","3","5"],
                    ["2","4","6","8"],
                    ["A","E"],
                    ["B","C","D"]]

    let nomColores = ["Blanco","Verde", "Azul", "Amarillo", "Rojo" ] 
    let colores = [UIColor.white, UIColor.blue,UIColor.green,UIColor.yellow,UIColor.red]

    //protocolos: para que funcione un pickerView  la clase debe de implementar de dos Protocolos
    // UIPickerViewDelegate, 
    //UIPIckerViewDataSource

    //Se crea el outlet del contro.
    @IBOutlet weak var pkvColores
    //posterior se va a consumir de un web Services.
    override func viewDidLoad(){
        super.viewDidLoad()
        //los respectivos protocolos estan en la misma clase
        pkvColores.delegate = self
        pkvColores.dataSource = self
    }

    //Numero de componentes, los componentes seran las columnas
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //aqui se prepara para regresar cuantos va a tener
        return arreglo.count
    }

    //configurar cuantos renglones tiene cada columna
    func pickerView (_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //se ejecuta por cada vez que haga el numberOfComponent, el parametro va a ir de n - 1
        //y no controlo el ciclo, se controla de manera interna. 
        //component -> se incrementa solo cada vez que se ejecute numberOfComponents
        //
        return arreglo[component].count
    }
    //que se metera en cada uno de las columnas
    func pickerView(_ pickerView: UIPickerView, tittleForRow row: Int, forComponent component: Int) -> String{
        //tambien se cicla, en el cual se va a ir anidando. 
        //como es una matriz, se debe de acceder
        return arreglo[component][row]
    }

    //Reaccionar al momento que un pickerview cambia...
    //metodo didSelectRow
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent conponent: Int){
        print(arreglo[component][row]) //imprimir cuando se reaccione al cambio.
    }

    //Buena practica meterlo a otro archivo con las estructuras que vamos a usar en nuestros proyectos.




    //Colores ->
        //Numero de componentes, los componentes seran las columnas
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //aqui se prepara para regresar cuantos va a tener
        return 1
    }

    //configurar cuantos renglones tiene cada columna
    func pickerView (_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //se ejecuta por cada vez que haga el numberOfComponent, el parametro va a ir de n - 1
        //y no controlo el ciclo, se controla de manera interna. 
        //component -> se incrementa solo cada vez que se ejecute numberOfComponents
        //
        return nomColores.count
    }
    //que se metera en cada uno de las columnas
    func pickerView(_ pickerView: UIPickerView, tittleForRow row: Int, forComponent component: Int) -> String{
        //tambien se cicla, en el cual se va a ir anidando. 
        //como es una matriz, se debe de acceder
        return nomColores[row]
    }
     func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent conponent: Int){
         //evaluar el renglon elegido
        pkvColores.backgroundColor = colores[row]
    }
    //clase 04/04/2022
    //arreglos que estaran paralelos de manera correcta.
    let nomColores = ["Blanco","Verde", "Azul", "Amarillo", "Rojo" ] 
    let colores = [UIColor.white, UIColor.blue,UIColor.green,UIColor.yellow,UIColor.red]

    //crear una diccionario para tener una llave y el otro campo para el nombre del color.
    let nomColores = ["Blanco","Verde", "Azul", "Amarillo", "Rojo" ] 
    let colores = [
                    (nombre: "Blanco", color: UIColor.white),
                    (nombre: "Verde", color: UIColor.green),
                    (nombre: "Azul", color: UIColor.blue),
                    (nombre: "Amarillo", color: UIColor.yellow),    
                    (nombre: "Rojo", color: UIColor.red)    
                ]
    //Numero de componentes, los componentes seran las columnas
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //aqui se prepara para regresar cuantos va a tener
        return 1
    }

    //configurar cuantos renglones tiene cada columna
    func pickerView (_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //se ejecuta por cada vez que haga el numberOfComponent, el parametro va a ir de n - 1
        //y no controlo el ciclo, se controla de manera interna. 
        //component -> se incrementa solo cada vez que se ejecute numberOfComponents
        //
        return colores.count
    }
    //que se metera en cada uno de las columnas
    func pickerView(_ pickerView: UIPickerView, tittleForRow row: Int, forComponent component: Int) -> String{
        //tambien se cicla, en el cual se va a ir anidando. 
        //como es una matriz, se debe de acceder
        return colores[row].nombre
    }
     func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent conponent: Int){
         //evaluar el renglon elegido
        pkvColores.backgroundColor = colores[row].color
    }

    //colores personalizados
 let colores = [
                    (nombre: "Blanco", color: UIColor.white),
                    (nombre: "Verde", color: UIColor(red: (123/255) , green:(69/255) ,blue:(170/255) ,alpha: 1)),
                    (nombre: "Azul", color: UIColor.blue),
                    (nombre: "Amarillo", color: UIColor.yellow),    
                    (nombre: "Rojo", color: UIColor.red)    
                ]
                //se indican proporciones 

}