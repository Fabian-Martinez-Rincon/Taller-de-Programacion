package practica_pruebas;
public class Demo01Libro {

    public static void main(String[] args) {
        Libro_1 libro = new Libro_1();
        libro.setTitulo("Java: A Beginner's Guide");
        libro.setEditorial("Mcgraw-Hill");
        libro.setAñoEdicion(2014);
        
        Autor a = new Autor("Messi", "murio");
        
        libro.setPrimerAutor(a);
        libro.setISBN("978-0071809252");
        libro.setPrecio(21.72);
        System.out.println(libro.toString());
    }
}
