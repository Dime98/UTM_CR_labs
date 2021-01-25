// Se cere elaborarea unei perechi de programe client-server cu următoarea funcţionalitate:
// -serverul gestionează o listă de fişiere.  
// -clienţii pot 
// 	    cere lista fişierelor disponibile, 
// 	    pot trimite noi fişiere, respectiv pot cere returnarea rezultatului interclasării a două sau mai multe fişiere.

// OBS. Se cere scrierea unui server concurent folosind thread-uri. 
// Accesul la lista de fişiere va fi sincronizat. 
// Inteclasarea fişierelor text se va face folosind thread-uri(se cere ca fişierele text să aibă dimensiunea de minim 500 Kb).



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
            System.out.println("Waiting...");
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
    DateFormat fordate = new SimpleDateFormat("yyyy/MM/dd"); 
    DateFormat fortime = new SimpleDateFormat("hh:mm:ss"); 
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
                dos.writeUTF("connected \n[1] get list \n[2] send file" + "\n[0] Exit to terminate connection."); 
                  
                received = dis.readUTF(); 

                // try { Thread.sleep(1500); }
                // catch (InterruptedException e) { }
                  
                if(received.equals("0")) {  
                    System.out.println("Client " + this.s + " sends exit..."); 
                    System.out.println("Closing this connection."); 
                    this.s.close(); 
                    System.out.println("Connection closed"); 
                    cls();
                    break; 
                } 
                  
                // creating Date object 
                Date date = new Date(); 
                  
                // write on output stream based on the 
                // answer from the client 
                switch (received) { 

                    case "1" : 
                        File f = null;
                        String p = "";
                        String[] paths;
                        int cnt = 0;
                        
                        try {

                            f = new File("C:/code/universitate/pcd/l6");
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
                          

                    case "2" : 
                        FileOutputStream fos = new FileOutputStream("testfile.jpg");
                        byte[] buffer = new byte[4096];
                        
                        int filesize = 53609; // 53609 Send file size in separate msg
                        int read = 0;
                        int totalRead = 0;
                        int remaining = filesize;
                        while((read = dis.read(buffer, 0, Math.min(buffer.length, remaining))) > 0) {
                            totalRead += read;
                            remaining -= read;
                            System.out.println("\nread " + totalRead + " bytes.\n" + buffer);
                            fos.write(buffer, 0, read);
                        }

                        System.out.println("File saved");

                        try { Thread.sleep(1000); }
                        catch (InterruptedException e) { }
                        dos.writeUTF("File recieved and saved successfully"); 

                        try { Thread.sleep(2500); }
                        catch (InterruptedException e) { }
                        break;   

                          

                    case "Time" : 
                        toreturn = fortime.format(date); 
                        dos.writeUTF(toreturn); 
                        break;   


                    case "Date" : 
                        toreturn = fordate.format(date); 
                        dos.writeUTF(toreturn); 
                        break; 
                                                
                    default: 
                        dos.writeUTF("Invalid input"); 
                        break; 
                } 

            } catch (IOException e) { 
                e.printStackTrace(); 
            } 
        } 
          
        // try { 
        //     // closing resources 
        //     this.dis.close(); 
        //     this.dos.close(); 
              
        // } catch(IOException e){ 
        //     e.printStackTrace(); 
        // } 
    } 
} 