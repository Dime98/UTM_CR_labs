import java.io.*; 
import java.net.*; 
import java.util.Scanner; 
  
public class Client { 

    public static void pause () {
          System.out.println("Press Any Key To Continue...");
          new java.util.Scanner(System.in).nextLine();
     }


    public static void cls () {
        try {
            new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        } catch (Exception e1) {

            System.out.println(e1);
        }
    }

    
    public static void main(String[] args) throws IOException { 

        try { 
            Scanner scn = new Scanner(System.in); 
              
            InetAddress ip = InetAddress.getByName("localhost"); 
            Socket s = new Socket(ip, 5056); 
      
            DataInputStream dis = new DataInputStream(s.getInputStream()); 
            DataOutputStream dos = new DataOutputStream(s.getOutputStream()); 
      
            while (true) { 
                pause();
                cls();
                System.out.println(dis.readUTF()); 
                String tosend = scn.nextLine(); 
                dos.writeUTF(tosend); 
                  
                if(tosend.equals("0")) { 
                    System.out.println("Closing this connection : " + s); 
                    s.close(); 
                    System.out.println("Connection closed"); 
                    break; 
                } 
                 
                  
                String received = dis.readUTF(); 
                System.out.println(received); 
            } 
              
            scn.close(); 
            dis.close(); 
            dos.close(); 
        }catch(Exception e){ 
            e.printStackTrace(); 
        } 
    } 
} 