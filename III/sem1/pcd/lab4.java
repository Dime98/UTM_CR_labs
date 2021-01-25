/*
X producători generează aleatoriu F obiecte care sunt consumate de Y consumatori. 
De afişat informaţia despre producerea şi consumarea obiectelor, mesajele despre cazurile 
când depozitul e gol sau plin. 
Toate operaţiile se efectuează până când fiecare consumator este îndestulat cu Z obiecte. 

X	Y	Z	D	Tip Obiecte
3	2	12	11	Consoane
X prod
Y consum
Z nr obj
D depo
*/
import java.util.Random;

public class lab4 {

	public static void cls() {
	    try { new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor(); } 
	    catch (Exception e1) { System.out.println(e1); }
	}

	public static void main(String[] args) {
		cls();

		CubbyHole c = new CubbyHole();

		Producer p1 = new Producer(c, 1);
		Producer p2 = new Producer(c, 2);
		Producer p3 = new Producer(c, 3);

      	Consumer c1 = new Consumer(c, 1);
      	Consumer c2 = new Consumer(c, 2);

      	p1.start(); 
      	p2.start(); 
      	p3.start(); 

      	c1.start();
      	c2.start();
   }
}


class CubbyHole {
	private int i = 0;
    private int i2 = 1;
	private char contents;
   
    public synchronized char get() {
    	while (i == 0) {
    		try { wait(); } 
    		catch (InterruptedException e) {}
    	}

    	// why 6
    	if (i2 > 6) { System.out.println("all"); } 

        notifyAll();
        i--;
        i2++;
      	return contents;
    }


	public synchronized void put(char value, char value2) {
		// while > 6
		while (i > 6) {
			try { 
				System.out.println("Full");
				wait(); 
			} 
			catch (InterruptedException e) { } 
		}

		Random r = new Random(); 
        int r2 = r.nextInt(2); 
        if (r2 == 0) contents = value;
        else contents = value2;

      	notifyAll();
    }
}


class Consumer extends Thread {
	private CubbyHole cubbyhole;
   	private int number;
   
   	public Consumer(CubbyHole c, int number) {
   		cubbyhole = c;
      	this.number = number;
   	}

	public void run() {
      	char value;
      	for (int i = 0; i < 10; i++) {
      		value = cubbyhole.get();
         	System.out.println("Consumer #" + this.number + " got: " + value + "\n");
      	}
    }

}


class Producer extends Thread {
	private CubbyHole cubbyhole;
   	private int number;
   	char[] consonants = {'q', 'w', 'r', 't', 'y', 'p', 's', 'd', 'f', 'g', 'h', 'k', 'l', 'z', 'x', 'c', 'v', 'b', 'n', 'm'};

   	public Producer(CubbyHole c, int number) {
   		cubbyhole = c;
      	this.number = number;
    } 

   	public void run() {
  		Random rd = new Random(); 
  		int len = consonants.length;
      
      	for (int i = 0; i < 10; i++) {
      		int rand = rd.nextInt(len);
      		int rand2 = rd.nextInt(len);
        	cubbyhole.put(consonants[rand], consonants[rand2]);
        	System.out.println("Producer #" + this.number + " put: " + consonants[rand] + ", " + consonants[rand2]);
        	
        	// try { sleep((int)(Math.random() * 200)); } 
        	// catch (InterruptedException e) { }
        }
    }

} 
