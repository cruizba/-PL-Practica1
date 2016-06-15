
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

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
    public static boolean error = false;
    
    
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
        headersHTML();
        for(ArrayList<String> list: matriz){
            for(String linea: list){
                bw.write(linea+"\n");
            }
        }
        bw.close();
    }
    
    public void headersHTML(){
    	matriz.get(1).add("<H2>Funciones y procedimientos</H2>\n<UL>");
    	String linea;
    	ArrayList<String> nFunctions = new ArrayList<String>();
    	Iterator<String> itNameFunctions = null;
    	for(int i = 2; i < matriz.size()-1; i++){
    		String suma = "";
    		int k = 0;
    		boolean found = false;
    		String toAdd = "";
    		while(!found){
    			linea = matriz.get(i).get(k);
    			if(k==1){
    				try{
    					String namefunc = linea.substring(9).split("\"")[0];
    					nFunctions.add(namefunc);
    					String[] sep = linea.split("<");
    					toAdd = namefunc + "\"" + sep[4].substring(4) + " (";
    				}catch(IndexOutOfBoundsException e){
    					
    				}
    				
    			}
    			if(linea.contains(";")){
    				String parts[] = linea.split(";");
    				found = true;
    				toAdd = parts[0]+";";
    			}else if (k != 0){
    				toAdd = linea;
    			}
    			suma += toAdd;
    			k++;
    			itNameFunctions = nFunctions.iterator();
    		}
    		matriz.get(1).add("<LI>" +suma.replace("A NAME=\"", "A HREF=\"#") + "</LI></A>\n");
    	}
    	matriz.get(1).add("<LI><A HREF=\"#ProgPpal\">Programa princial</A></LI>\n</UL>\n");
    }
    
}

