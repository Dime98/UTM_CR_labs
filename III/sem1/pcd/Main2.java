import java.util.Random;
import java.awt.*;
import java.awt.event.*;  
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import javax.swing.*;

// 4.  De desenat un derptunghi ce se deplasează pe ecran și schimbă culoarea tastînd un buton oarecare sau cu mausul;

public class Main2 extends Frame implements Runnable {

    private int x = 0;
    private int y = 0;

    public Main2(){
        super("Moving RECTANGLE");

        setBackground(Color.WHITE);

        setSize(400,400);
        
        Thread t = new Thread(new Runnable() {

            public void run() {
                int xDir = +1; //direction (horizontal)
                int incr = 5; //speed of movement


                while (true) {
                    if (x > 400) 
                        xDir = -1;
                    
                    if (x < 0) 
                        xDir = +1;
                    
                    x += (incr * xDir);
                    /*redraw image in new screen location*/
                    repaint();
                    setBackground(Color.WHITE);
                    try {
                        /*put thread to sleep for designated time*/
                        Thread.sleep(100);
                    } //ends try
                    catch (InterruptedException e) {}
                }


            } //ends method
        });

        t.start();    

    }



    public void paint(Graphics g){
        // Color myWhite = new Color(255, 255, 255);
        // setColor(new Color(r, g, b));

        g.setColor(Color.RED);

        drawHat();

        // Thread t = new Thread(this);
        // t.start();
    }



    public void drawHat(){

        Graphics g = getGraphics();

        g.drawRect(x+20, y+20, 150, 100);
        g.fillRect(x+20, y+20, 150, 100);
        g.setColor(Color.BLUE);

        // Random rand = new Random(); 
        //         int r = rand.nextInt(255); 
        //         int g2 = rand.nextInt(255); 
        //         int b = rand.nextInt(255);
        //         g2D.setColor(Color.RED); 

    }


    public static void main(String args[]){
        Main2 pm = new Main2();


        pm.setVisible(true);
        pm.setSize(600,400);
    }

    @Override
    public void run() {
        
    }
}