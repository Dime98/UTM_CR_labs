import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Panel extends JPanel implements ActionListener {

Paddle paddle = new Paddle();
Timer timer;

public Panel() {
    this.setFocusable(true);
    timer = new Timer(5,this);

    timer.start();
}

@Override
protected void paintComponent(Graphics g) {
    super.paintComponent(g);
    paddle.paint(g);
}

public void update() {
    paddle.update();
}

@Override
public void actionPerformed(ActionEvent e) {
    repaint();
    update();
}
}