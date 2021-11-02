/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package practica3pro;

public class ClaseB extends ClaseA{
 
 public int dos(){
 return 5;
 }
 
 public int cuatro(){
 return this.dos() + super.tres(); 
 }
 
 public int seis(){
 return this.dos();
 }
}
