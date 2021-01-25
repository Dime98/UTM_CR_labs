import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class KeyBindings extends JFrame implements Runnable {

    // public KeyBindings(){

    //     setBackground(Color.BLUE);
       
    //     // setSize(400,400);

    //     this.addWindowListener(new WindowAdapter(){
    //           public void windowClosing(WindowEvent we){
    //             System.exit(0);
    //           }
    //         });



    // }


    private static final int D_W = 500;
    private static final int D_H = 200;
    int x = 0;
    int y = 0;

    DrawPanel drawPanel = new DrawPanel();

    public KeyBindings() {
        super("Moving rectangle");



        ActionListener listener = new AbstractAction() {
            public void actionPerformed(ActionEvent e) {
                if (x >= D_W) {
                    x = 0;
                    drawPanel.repaint();
                } else {
                    x += 10;
                    drawPanel.repaint();
                }
            }
        };

        Thread t = new Thread(new Runnable() {

            public void run() {
                int xDir = +1; //direction (horizontal)
                int incr = 5; //speed of movement


                while (true) {
                    if (x >= D_W) {
                        x = 0;
                        drawPanel.repaint();
                    } else {
                        x += (incr * xDir);
                        drawPanel.repaint();
                    }
                    try { Thread.sleep(100); }
                    catch (InterruptedException e) {}
                }


            } //ends method
        });

        t.start();

        this.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent we) {
            System.exit(0);
          }
        });

        Thread t2 = new Thread(this);
        t2.start();

        try { Thread.sleep(100);} 
        catch (InterruptedException e) { e.printStackTrace(); }
        add(drawPanel);

        pack();
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setVisible(true);
    }

        public void run() {

        int xDir = +1; //direction (horizontal)
        int incr = 5; //speed of movement
        int sleepFor = 600;
        while (true) {
            x += (incr * xDir);
            /*redraw image in new screen location*/
            repaint();
            setBackground(Color.BLUE);
            try {
                /*put thread to sleep for designated time*/
                Thread.sleep(sleepFor);
            } //ends try
            catch (InterruptedException e) {}
        }
    } //ends method


    private class DrawPanel extends JPanel {

        protected void paintComponent(Graphics g) {
            super.paintComponent(g);
    g.setColor(Color.RED);
            g.fillRect(x, y, 50, 50);
        }

        public Dimension getPreferredSize() {
            return new Dimension(D_W, D_H);
        }
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                new KeyBindings();
            }
        });
    }
}
   


/*

   import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class KeyBindings extends JFrame {

    private static final int D_W = 500;
    private static final int D_H = 200;
    int x = 0;
    int y = 0;

    DrawPanel drawPanel = new DrawPanel();

    public KeyBindings() {
        ActionListener listener = new AbstractAction() {
            public void actionPerformed(ActionEvent e) {
                if (x >= D_W) {
                    x = 0;
                    drawPanel.repaint();
                } else {
                    x += 10;
                    drawPanel.repaint();
                }
            }
        };
        Timer timer = new Timer(100, listener);
        timer.start();
        add(drawPanel);

        pack();
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setVisible(true);
    }

    private class DrawPanel extends JPanel {

        protected void paintComponent(Graphics g) {
            super.paintComponent(g);
            g.setColor(Color.GREEN);
            g.fillRect(x, y, 50, 50);
        }

        public Dimension getPreferredSize() {
            return new Dimension(D_W, D_H);
        }
    }

    public static void main(String[] args) {
        EventQueue.invokeLater(new Runnable() {
            public void run() {
                new KeyBindings();
            }
        });
    }
}
   */