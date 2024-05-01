/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Core;

import Conversion.Converter;
import EntityRelationship.ERModel;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.LineNumberReader;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author caldw
 */
public class ERMtoRM {
    
    public static void main(String args[]) {
        
        startup();
        
    }
    
    //startup: start the process of model formation
    private static void startup() {
        Scanner scan = new Scanner(System.in);
        
        System.err.println("Quisieras cargar un archivo o empezar de cero(F/N)");
        String method = scan.next();
        if (method.equalsIgnoreCase("N")) {
            System.err.println("Iniciando nuevo modelo");
            newModel();
        } else if (method.equalsIgnoreCase("F")) {
            System.err.println("Cargando modelo previo...");
            loadModel();
        } else {
            System.err.println("Inserte F o N");
            startup();
        }//if-else
        
    }//startup
 
    private static void addEntity(ERModel erm) {
        Scanner scan = new Scanner(System.in);
        String name, weak, addAttr;
        
        System.err.print("Cual es el nombre de la entidad? ");
        name = scan.next();
        
        System.err.print("Es una entidad debil? ");
        weak = scan.next();
        if (weak.equalsIgnoreCase("YES") || weak.equalsIgnoreCase("Y")) {
            String idRel;
            System.err.print("De quien depende? (relacion identificada) ");
            idRel = scan.next();
            erm.addWeakEntity(name, idRel);
        } else {
            erm.addRegEntity(name);
        }//if-else
        
        System.err.print("Quisieras agregar un atributo a esta entidad? ");
        addAttr = scan.next();
        while (addAttr.equalsIgnoreCase("YES") || addAttr.equalsIgnoreCase("Y")) {
            addAttribute(erm, name, true);
            System.err.print("Quieres agregarle mas atributos a la Entidad?");
            addAttr = scan.next();
        }//while
        
        System.err.print("Deseas configurar la llave primaria para esta entidad? ");
        addAttr = scan.next();
        if (addAttr.equalsIgnoreCase("YES") || addAttr.equalsIgnoreCase("Y")) {
            setKeyAttribute(erm, name);
        }//while
    }//addEntity
    
    private static void addRelationship(ERModel erm) {
        Scanner scan = new Scanner(System.in);
        String name, LE, RE, LP, RP, LC, RC, addAttr;
        System.err.print("Cual es el nombre de la relación? ");
        name = scan.next();
        System.err.print("Cual es la primer entidad relacionada? ");
        LE = scan.next();
        System.err.print("Tiene participaciion parcial o total? ");
        LP = scan.next();
        System.err.print("Cual es su cardinalidad(1,n,m)? ");
        LC = scan.next();
        System.err.print("Cual es la segunda entidad relacionada? ");
        RE = scan.next();
        System.err.print("DLa entidad tiene participacion total o parcial? ");
        RP = scan.next();
        System.err.print("Cual es su cardinalidad(1,n,m)? ");
        RC = scan.next();
        erm.addRelationship(name, erm.getEntity(LE), erm.getEntity(RE), LP, RP, LC, RC);
        
        System.err.print("Quieres agregar algun atributo a esta relacion? ");
        addAttr = scan.next();
        while (addAttr.equalsIgnoreCase("YES") || addAttr.equalsIgnoreCase("Y")) {
            addAttribute(erm, name, false);
            System.err.print("Quieres agregar mas atributos a esta relacion? ");
            addAttr = scan.next();
        }//while
    }//addRelationship
    
    private static void addAttribute(ERModel erm, String erName, boolean isEnt) {
        Scanner scan = new Scanner(System.in);
        String aName, attach, type;
        System.err.print("Cual es el nombre del atributo? ");
        aName = scan.next();
        System.err.println("Cual es el tipo de atributo?");
        System.err.print("Simple(S), Compuesto(C), Multivalor(M), Derivado(D) ");
        type = scan.next();
        if (isEnt) {
            System.err.println("Cual es el nombre del objeto al que el atributo esta unido? ");
            System.err.print("(Inserta el nombre de la entidad o un atributo compuesto): ");
            attach = scan.next();
            erm.addAttrToEntity(erName, attach, aName, type);
        } else {
            System.err.println("Cual es el nombre del objeto al que el atributo esta unido? ");
            System.err.print("Inserta el nombre de la entidad o un atributo compuesto): ");
            attach = scan.next();
            erm.addAttrToRelationship(erName, attach, aName, type);
        }//if-else
    }//addAttribute
    
    private static void addAttribute(ERModel erm) {
        Scanner scan = new Scanner(System.in);
        String EntOrRel, erName;
        System.err.print("Se esta agregando a una entidad o una relacion? ");
        EntOrRel = scan.next();
        if (EntOrRel.equalsIgnoreCase("ENTITY") || EntOrRel.equalsIgnoreCase("E")) {
            System.err.print("A que entidad estamos agregando el atributo? ");
            erName = scan.next();
            addAttribute(erm, erName, true);
        } else if (EntOrRel.equalsIgnoreCase("RELATIONSHIP") || EntOrRel.equalsIgnoreCase("R")) {
            System.err.print("A que relacion estamos agregando el atributo? ");
            erName = scan.next();
            addAttribute(erm, erName, false);
        }//if-else 
        System.err.println();
    }//addAttribute
    
    private static void setKeyAttribute(ERModel erm, String entity) {
        Scanner scan = new Scanner(System.in);
        String attr;
        ArrayList<String> keys = new ArrayList<>();
        
        System.err.println("Inserta los atributos uno por uno");
        System.err.println("Inserta - para finalizar");
        attr = scan.next();
        while (!attr.equals("-")){
            keys.add(attr);
            attr = scan.next();
        }//do while
        erm.setKeyAttrOfEnt(entity, keys);
    }//setKeyAttribute
    
    private static void setKeyAttribute(ERModel erm) {
        Scanner scan = new Scanner(System.in);
        String entity;

        System.err.print("A que entidad le vamos a configurar los atributos llave? ");
        entity = scan.next();
        
        setKeyAttribute(erm, entity);
    }//setKeyAttribute
    
    //saveModel: save current model information to file
    private static void saveModel(ERModel erm) throws IOException {
        String filename = erm.getName() + ".dat";
        System.err.println("Guardando modelo entidad-relacion " + filename);
        FileWriter model = new FileWriter("./models/" + filename);
        
        model.write(erm.toFile());
        
        model.close();
    }//saveModel
    
    private static void addToModel(ERModel erm) {
        Scanner scan = new Scanner(System.in);
        String action;
        do {
            //wait a sec before continuing
            //give user a chance to breath
            try {
                Thread.sleep(1000);
            } catch (InterruptedException ex) {
                Logger.getLogger(ERMtoRM.class.getName()).log(Level.SEVERE, null, ex);
            }
            System.err.println("Modificando " + erm.getName());
            System.err.println("Agregar: Entidad(E), Relacion(R), Atributo(A)");
            System.err.println(" Configurar llave primaria (K)\n Convertir (C)\n Mostrar (D)\n Salir");
            action = scan.next();
            
            if (action.equalsIgnoreCase("ENTITY") || action.equalsIgnoreCase("E")) {
                addEntity(erm);
            } else if (action.equalsIgnoreCase("RELATIONSHIP") || action.equalsIgnoreCase("R")) {
                addRelationship(erm);
            } else if (action.equalsIgnoreCase("ATTRIBUTE") || action.equalsIgnoreCase("A")) {
                addAttribute(erm);
            } else if (action.equalsIgnoreCase("SET KEY") || action.equalsIgnoreCase("K")) {
                setKeyAttribute(erm);    
            } else if (action.equalsIgnoreCase("CONVERT") || action.equalsIgnoreCase("C")) {
                Converter.ERtoRel(erm).display();
            } else if (action.equalsIgnoreCase("DISPLAY") || action.equalsIgnoreCase("D")) {
                erm.display();
            } else if (!action.equalsIgnoreCase("EXIT") && !action.equalsIgnoreCase("QUIT")) {
                System.err.println("Seleccione una opcion: \n");
            }//if-else            
            
        } while (!action.equalsIgnoreCase("exit") && !action.equalsIgnoreCase("quit"));
        
        System.err.print("Quisieras guardar este modelo? ");
        action = scan.next();
        if (action.equalsIgnoreCase("YES") || action.equalsIgnoreCase("Y")) {
            try {
                saveModel(erm);
            } catch (IOException ex) {
                Logger.getLogger(ERMtoRM.class.getName()).log(Level.SEVERE, null, ex);
            }
        }//if
        System.err.println("Saliendo...");
    }//addToModel
    
    private static void newModel() {
        Scanner scan = new Scanner(System.in);
        String name;
        System.err.print("Cual es el nombre del modelo? ");
        name = scan.next();
        ERModel erm = new ERModel(name);
        
        addToModel(erm);
    }//newModel
    
    //readAttribute: read an attribute from a line of input
    private static void readAttribute(ERModel erm, String erName, String line, boolean entity) {
        String attach, attrName, type;
        String attr_type[] = line.split(":");
        String attach_ary[] = attr_type[0].split(">");
        type = attr_type[1];
        if (attach_ary.length == 1) {
            attrName = attach_ary[0];
            attach = erName;
        } else {
            attrName = attach_ary[1];
            attach = attach_ary[0];
        }//if-else
        if (entity) {
            System.err.println("Agregando atributo " + attrName + " a la entidad " + erName);
            erm.addAttrToEntity(erName, attach, attrName, type);
        } else {
            System.err.println("Agregando atributo " + attrName + " a la relacion " + erName);
            erm.addAttrToRelationship(erName, attach, attrName, type);
        }//if-else
    }//readAttribute
    
    //readRegEntity: read a regular Entity from file
    private static void readRegEntity(ERModel erm, LineNumberReader reader) throws IOException {
        ArrayList<String> keys = new ArrayList<>();
        String name;
        String line = reader.readLine();
        name = line;
        System.err.println("Agregando entidad" + name);
        erm.addRegEntity(name);
        while (!(line = reader.readLine()).equals("A>")) {
            //do nothing
        }//while
        while (!(line = reader.readLine()).equals("<A")) {
            readAttribute(erm, name, line, true);
        }//while
        while (!(line = reader.readLine()).equals("K>")) {
            //do nothing
        }//while
        while (!(line = reader.readLine()).equals("<K")) {
            keys.add(line);
        }//while
        erm.setKeyAttrOfEnt(name, keys);
    }//readRegEntity
    
    //readWeakEntity: read a weak Entity from file
    private static void readWeakEntity(ERModel erm, LineNumberReader reader) throws IOException {
        ArrayList<String> keys = new ArrayList<>();
        String name;
        String line = reader.readLine();
        name = line;
        System.err.println("Agregando entidad " + name);
        erm.addWeakEntity(name, reader.readLine());
        while (!(line = reader.readLine()).equals("A>")) {
            //do nothing
        }//while
        while (!(line = reader.readLine()).equals("<A")) {
            readAttribute(erm, name, line, true);
        }//while
        while (!(line = reader.readLine()).equals("K>")) {
            //do nothing
        }//while
        while (!(line = reader.readLine()).equals("<K")) {
            keys.add(line);
        }//while
        erm.setKeyAttrOfEnt(name, keys);
    }//readWeakEntity
    
    //readRelationship: read a relationship from file
    private static void readRelationship(ERModel erm, LineNumberReader reader) throws IOException {
        String name, le, re, lp, rp, lc, rc;
        String line = reader.readLine();
        name = line;
        le = reader.readLine();
        lp = reader.readLine();
        lc = reader.readLine();
        re = reader.readLine();
        rp = reader.readLine();
        rc = reader.readLine();
        System.err.println("Adding Relacion " + name);
        erm.addRelationship(name, erm.getEntity(le), erm.getEntity(re), lp, rp, lc, rc);
        while (!(line = reader.readLine()).equals("A>")) {
            //do nothing
        }//while
        while (!(line = reader.readLine()).equals("<A")) {
            readAttribute(erm, name, line, false);
        }//while
    }//readRelationship
    
    private static void loadModel() {
        Scanner scan = new Scanner(System.in);
        String filename;
        System.err.print("Escribe el nombre del modelo a cargar: ");
        filename = scan.next();
        
        LineNumberReader reader = null;
        
        try {
            reader = new LineNumberReader(new FileReader("./models/" + filename));
            System.err.println("Loading ./model/" + filename + "...");
            String line;
            line = reader.readLine();
            ERModel erm = new ERModel(line);
            
            while ((line = reader.readLine()) != null) {
                if (line.equals("EOF")) {
                    break;
                } else if (line.equals("ER")) {
                    readRegEntity(erm, reader);
                } else if (line.equals("EW")) {
                    readWeakEntity(erm, reader);
                } else if (line.equals("R")) {
                    readRelationship(erm, reader);
                }//if-else
            }//while
            
            System.err.println("Loaded ./model/" + filename);
            System.err.println();
            addToModel(erm);
        } catch (Exception ex){
         ex.printStackTrace();
        } finally {
         //Close the LineNumberReader
            try {
                if (reader != null){
                reader.close();
                }
            } catch (IOException ex){
                ex.printStackTrace();
            }//try-catch
        }//try-catch-finally
        
    }//loadModel
    
}
