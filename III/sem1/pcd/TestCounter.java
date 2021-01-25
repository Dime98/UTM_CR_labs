// Sumele poziţiilor numerelor pare două câte două începând căutarea şi sumarea de la primul element	
// Sumele poziţiilor numerelor pare două câte două începând căutarea şi sumarea de la ultimul element
import java.util.Random;
	
class Counter extends Thread {
	private int from, to, step;
	int[] arr2;
	int s = 0;
	int s1 = 0;
	int s1t = 0;
	int s2 = 0;

	public Counter(int from, int to, int step, int[] arr2) {
		this.from = from;
		this.to = to;
		this.step = step;
		this.arr2 = arr2;
	}


	public void run() {
		int z = 0;
		int k = 0;
		int k2 = 0;

		boolean parity;
		boolean done1 = false;

		for(int i = from; i != to; i += step) {
			System.out.print(arr2[i] + "(" + i + ")" + " " );
		}

		for(int i = from; i != to; i += step) {
			// System.out.print(arr2[i] + " ");

			if ( (arr2[i] % 2) == 0  ) {
				// System.out.println("arr[i] = " + arr2[i] );
				s1 = s1 + i;
				k++;
				parity = true;
			} else parity = false;

			if ( (k == 2) && (parity == true) && (done1 = false) ) {
				done1 = true;
				k = 0;
				s2 = s2 + i;
				k2 = 1;
			} else if ( (parity == true) && (done1 == true) ) {
				s2 = s2 + i;
				s1t = s1 + s2;
				s = s + s1t;
				System.out.println("s1 = "+ s1);
				System.out.println("s2 = "+ s2);
				System.out.println("s = " + s + "\n");
				s1 = 0;
				s2 = 0;
				done1 = false;
			}

			if (done1=true) k = 0;
		}		


		// for(int i = from; i != to; i += step) {
		// 	System.out.println("\n" + getName() + " -> " + i + " " );

		// 	if ( (arr2[i]%2) == 0 ) {
		// 		s1 = s1 + i;
		// 		System.out.println( getName() + "  | i1 = " + i + " i2 = " + i);
		// 		k++;
				
		// 		if (k == 2) {
		// 			k = 0;
		// 			s2 = s2 + i;
		// 			k2++;
					
		// 			if (k2 == 2) {
		// 				k2 = 0;
		// 				s = s1 + s2;
		// 				System.out.println(getName() + " s1 = " + s1);
		// 				System.out.println(getName() + " s2 = " + s2);
		// 				System.out.println(getName() + " s = " + s);
		// 				s2 = 0;
		// 				s1 = 0;
		// 				s = 0;
		// 			}
		// 		} else z++;
				
		// 	}//2
		// }


	}
}






public class TestCounter {	

    public static void cls() {
        try {
            new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        } catch (Exception e1) {
            System.out.println(e1);
        }
    }

	public static void main(String args[]) {
		Counter cnt1, cnt2;     

		Random rd = new Random(); 
		int[] arr = new int[100];

		cls();
      		
		System.out.println("\ntabloul generat");
  		for (int i = 0; i < arr.length; i++) {
	        arr[i] = rd.nextInt(101); 
	        System.out.print(arr[i] + " "); 
	        if (i == 25) System.out.println(" ");
	        if (i == 50) System.out.println(" ");
	        if (i == 75) System.out.println(" ");
  		}

  		System.out.print("\n~~~~~~~~~~~~~~~~~~~~~~~");
 		
 		System.out.println("\n");
		
		cnt1 = new Counter(0, 99, 1, arr);
		cnt2 = new Counter(99, 0, -1, arr); 

		cnt1.start();
		cnt2.start();
	}
}

    