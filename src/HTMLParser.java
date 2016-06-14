
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author hecto
 */
public class HTMLParser {
    public ArrayList<ArrayList<String>> matriz = new ArrayList<ArrayList<String>>();
    
    
    public HTMLParser(){
        
        matriz.add(new ArrayList<String>());
        matriz.get(0).add("<!DOCTYPE html>");
        matriz.get(0).add("<HTML>");
        matriz.get(0).add("<head>");
        matriz.get(0).add("<title>Practica PL</title>");
        matriz.get(0).add("<style>");
        matriz.get(0).add(".cte {color:rgb(19,189,72);}");
        matriz.get(0).add(".ident {color:rgb(55,40,244);}");
        matriz.get(0).add(".palres {color:rgb(0,0,0);font-weight:bold;}");
        matriz.get(0).add("</style>");
        matriz.get(0).add("</head>");
        matriz.get(0).add("");
        matriz.get(0).add("<BODY>");
        matriz.get(0).add("<A NAME=\"inicio\">");
        matriz.add(new ArrayList<String>());
        matriz.add(new ArrayList<String>());

    }
    
    
    public void createHTML(String ruta) throws IOException{
        File file = new File(ruta);
        BufferedWriter bw = new BufferedWriter(new FileWriter(file));
        for(ArrayList<String> list: matriz){
            for(String linea: list){
                bw.write(linea+"\n");
            }
        }
        bw.close();
    }
    
}

