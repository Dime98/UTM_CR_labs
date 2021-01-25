    import javax.swing.JFrame;
    import java.awt.Dimension;
     import java.awt.*;

    //required for MouseListener
    import java.awt.event.*;

    //requied for Graohics
    import java.applet.*;
    import javax.swing.*;

    class Snake2 extends JPanel
    {
      private Rectangle sampleObject;

      public Snake2()
      {
         addMouseListener(new MouseListener());

      }


      /* create background */
      public void paint (Graphics g)
      {
        Font angel = new Font("Angelic War", Font.BOLD, 60);
        Font ith = new Font("Ithornît", Font.BOLD, 78);

        setBackground(Color.darkGray);
        g.setColor(Color.darkGray);
        g.fillRect(0,0,700,850);
        g.setColor(Color.gray);
        g.fillRect(50,150,600,650);
        g.setColor(Color.white);
        g.drawRect(50,150,600,650);

        g.drawString("Quit",52,116);
        g.drawRect(50,100,30,20);

        //g.setFont(angel);
        //g.drawString("SNAKE",300,70);
        g.setFont(ith);
        g.drawString("SNAKE",280,90);  
      }

      public void sprite (int x, int y, Graphics g){
        g.setColor(Color.white);
        g.fillRect(300,200,10,10);
      }

      public void start (int x, int y, Graphics g){
        g.setColor(Color.white);
        g.drawString("START GAME",300,425);
      }
    }


    /* Tracks where mouse is clicked */
    class MouseListener extends MouseAdapter
    {
      public void mouseReleased(MouseEvent me)
      {
        if (me.getX() >= 50 && me.getX() <= 80 && me.getY() >= 100 && me.getY() <= 120)
        {
          System.exit(0);
        }

          String str="Mouse Released at "+me.getX()+","+me.getY();
          System.out.println(str);
      }
    }

    public class SnakeDisplay
    {

      public static void main ( String [ ] arguments )
      {   
        JFrame frame = new JFrame ( "Snake" );
        Snake2 panel = new Snake2 ( );


        frame.setDefaultCloseOperation ( JFrame.EXIT_ON_CLOSE );
        frame.add ( panel );
        frame.setContentPane ( panel );

        frame.setPreferredSize ( new Dimension ( 700, 850 ) );
        //frame.setLocationRelativeTo ( null );
        frame.setVisible ( true );
        frame.pack ( );     
      }
    }