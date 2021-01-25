import java.util.Random;
import java.awt.*;
import java.awt.event.*;  
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.*;

public class Main extends Frame implements Runnable {

    private int x = 0;
    private int y = 0;

    public Main(){
        super("lab5");

        setSize(400, 400);

        this.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent we) {
                System.exit(0);
            }
        });

        Thread t4 = new Thread(this);

        Thread t0 = new Thread(new Runnable() {

            public void run() {

                while (true) {
                    Random rand = new Random();
                    int r  = rand.nextInt(40) + 180;
                    int g2 = rand.nextInt(40) + 180;
                    int b = rand.nextInt(40) + 180;
                    setBackground(new Color(r, g2, b));
                    try { Thread.sleep(700); }
                    catch (InterruptedException e) {}
                }
            }
        });

        t0.start();


        Thread t = new Thread(new Runnable() {

            public void run() {
                int xDir = +1; //direction (horizontal)
                int incr = 5; //speed of movement


                while (true) {
                    if (x > 415)
                        xDir = -1;
                    
                    if (x < 0)
                        xDir = +1;
                    
                    x += (incr * xDir);
                    /*redraw image in new screen location*/
                    repaint();
                    Random rand = new Random();
                    int r = rand.nextInt(250);
                    try { Thread.sleep(r); }
                    catch (InterruptedException e) {}
                }
            } //ends method
        });

        t.start();


        Thread t2 = new Thread(new Runnable() {

            public void run() {
                int yDir = +1;
                int incr = 5;

                while (true) {
                    if (y > 270) 
                        yDir = -1;
                    
                    if (y < 20) 
                        yDir = +1;
                    
                    y += (incr * yDir);

                    repaint();
                    Random rand = new Random();
                    int r = rand.nextInt(250);
                    try { Thread.sleep(r); }
                    catch (InterruptedException e) {}
                }
            }
        });

        t2.start();

    }



    public void paint(Graphics g) {
        Thread t3 = new Thread(new Runnable() {
                Random rand = new Random(); 
            public void run() {
                while (true) {
                    g.setColor(Color.RED);
                    drawHat();
                    try { Thread.sleep(10000); } //ends try
                    catch (InterruptedException e) {}
                }
            }
        });

        t3.start();

        g.setColor(Color.RED);
        drawHat();
    }

    public void drawHat(){

        Graphics g = getGraphics();

        g.drawRect(x+20, y+20, 150, 100);
        g.fillRect(x+20, y+20, 150, 100);
    }

    public static void main(String args[]){
        Main pm = new Main();

        pm.setVisible(true);
        pm.setSize(600,400);
    }

    @Override
    public void run() {
        
    }
}


// JFrame f=new JFrame("Button Example"); 
        //             //submit button
        // JButton b=new JButton("Submit");    
        // b.setBounds(100,100,140, 40);    
        //             //enter name label
        // JLabel label = new JLabel();       
        // f.add(b);    
        // f.setSize(300,300);    
        // f.setLayout(null);    
        // f.setVisible(true);    
        // f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);   
        
        // b.addActionListener(new ActionListener() {
            
        //     public void actionPerformed(ActionEvent arg0) {
        //             // label1.setText("Name has been submitted.");  
        //             System.out.println("some");           
        //     }          
        //   });