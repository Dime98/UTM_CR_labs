import java.io.*; 
import java.text.*; 
import java.util.*; 
import java.net.*; 
  
// Server class 
public class Server {

    public static void cls() {
        try {
            new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        } catch (Exception e1) {
            System.out.println(e1);
        }
    }
    
    public static void main(String[] args) throws IOException {
        cls();

        // server is listening on port 5056
        ServerSocket ss = new ServerSocket(5056);
          
        // running infinite loop for getting 
        // client request 
        while (true) { 
            Socket s = null; 
              
            try { 
                // socket object to receive incoming client requests 
                s = ss.accept(); 
                  
                System.out.println("A client is connected : " + s); 
                  
                // obtaining input and out streams 
                DataInputStream dis = new DataInputStream(s.getInputStream()); 
                DataOutputStream dos = new DataOutputStream(s.getOutputStream()); 
                  
                System.out.println("Assigning new thread for this client"); 
  
                // create a new thread object 
                Thread t = new ClientHandler(s, dis, dos);
  
                // Invoking the start() method 
                t.start(); 
                  
            } 
            catch (Exception e){ 
                s.close(); 
                e.printStackTrace(); 
            } 
        } 

    } 
} 
  

// ClientHandler class 
class ClientHandler extends Thread { 
    final DataInputStream dis; 
    final DataOutputStream dos; 
    final Socket s; 

    public static void cls() {
        try {
            new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        } catch (Exception e1) {
            System.out.println(e1);
        }
    }
      
    // Constructor 
    public ClientHandler(Socket s, DataInputStream dis, DataOutputStream dos) { 
        this.s = s; 
        this.dis = dis; 
        this.dos = dos; 
    } 
  
    @Override
    public void run() { 
        String received; 
        String toreturn; 
        while (true) { 
            try { 
  
                // Ask user what he wants 
                dos.writeUTF("connected \n[1] get list" + "\n[0] Exit to terminate connection."); 
                  
                received = dis.readUTF(); 
                  
                if(received.equals("0")) {  
                    System.out.println("Client " + this.s + " sends exit..."); 
                    System.out.println("Closing this connection."); 
                    this.s.close(); 
                    System.out.println("Connection closed"); 
                    break; 
                } 
                  
                // write on output stream based on the 
                // answer from the client 
                switch (received) { 

                    case "1" : 
                        File f = null;
                        String p = "";
                        String[] paths;
                        int cnt = 0;
                        
                        try {

                            f = new File("C:/code/universitate/pcd/l6/New folder");
                            paths = f.list();
                            
                            for(String path:paths) {
                                p += path + "\n";
                                cnt++;
                                // System.out.println(p);
                            }

                        } catch(Exception e) {
                            e.printStackTrace();
                        }
                        System.out.println("file list sent");
                        dos.writeUTF(cnt + 1 + " files: \n" + p); 
                        break; 

                    default: 
                        dos.writeUTF("Invalid input"); 
                        break; 
                } 

            } catch (IOException e) { 
                e.printStackTrace(); 
            } 
        } 
    } 
} 