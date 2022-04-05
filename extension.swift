
/*En el bloque do, debe de haber un constructor o un metodo que este preparado
para lanzar errores.*/
/*Data representa un tipo generico puede ser string, double etc.
y esta preparado para lanzar errores. 

urlImage --> es la referencia a donde se quiere llegar, pero puede traer una imagen, un json etc*/
do {
    let imageData = try Data (contentsOf: urlImage) /*urlImage --> es la referencia a donde se quiere llegar, pero puede traer una imagen, un json etc*/
    let imagen = UIImage(data: imageData)
    self.image = imagen
}   
catch {
    print(error.localizedDescription)
}
/*guarlet solo se puede invocar en un metodo, y no se puede utilizar por que estamos en un constructor.*/
extension UIImage
{
    /*clase que ya existen dentro de swift*/
    convenience init (_ url: String)
    {
        if let urlImage = URL(string:url)
        {
            do{
                let imageData = try Data(contentsOf: urlImage)
                /*debe de devolver un objeto de tipo image apoyandonos de otro constructor que ya exista
                se invoca el constructor que recibe un data*/
                self.init(data: imageData)!
            }
            catch{
                print(error.localizedDescription)
                self.init()
            }
        }
        else {
            self.init()
        }
        
    }

}

imgEspecialidad.image = UIImage(url:String)