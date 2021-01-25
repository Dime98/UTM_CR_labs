// Sumele poziţiilor numerelor pare două câte două începând de la ânceputul diapazonului [15, 115]
// Sumele poziţiilor numerelor pare două câte două începând de la sfîrșitul diapazonului [6, 106]
// De parcurs de la început intervalul [234, 987]
// De parcurs de la sfîrșit intervalul [123, 890]
import java.util.Random;

// public synchronized long pause

class Counter1 extends Thread {
    private int from, to, step;
    String data;
    int[] arr2;
    int s = 0;
    int s1 = 0;
    int s2 = 0;

    public Counter1(int from, int to, int step, int[] arr2, String str) {
        this.data = str;
        this.from = from;
        this.to = to;
        this.step = step;
        this.arr2 = arr2;
    }

    public void run() {
        int k = 0;
        int k2 = 0;

        for(int i = from; i != to; i += step) {

            if ( (arr2[i]%2)==0 ) {
                
                if (k < 2) {
                    s1 = s1 + i;
                    k++;
                }
                
                    else {
                        s2 = s2 + i;
                        k2++;
                        
                        if (k2 == 2) {
                            k2 = 0;
                            k = 0;
                            s = s1 + s2;
                            System.out.println(getName() + "   s1 = " + s1);
                            System.out.println(getName() + "   s2 = " + s2);
                            System.out.println(getName() + "    s = " + s );
                            s2 = 0;
                            s1 = 0;
                            s = 0;
                        }
                    } // end esle k 
            } // end paritate
        } //end for


        try { Thread.sleep(3000); } 
        catch (InterruptedException e) { e.printStackTrace(); }
        System.out.println(" "); 
        int t = 0;
        while (t < data.length())
        {
            System.out.print(data.charAt(t));
            try { Thread.sleep(50); } 
            catch (InterruptedException e) { e.printStackTrace(); }
            t++;
        }

    }
}




class Counter2 extends Thread {
    private int from, to, step;
    String data;
    int[] arr2;
    int s = 0;
    int s1 = 0;
    int s2 = 0;

    public Counter2(int from, int to, int step, int[] arr2, String str) {
        this.data = str;
        this.from = from;
        this.to = to;
        this.step = step;
        this.arr2 = arr2;
    }

    public void run() {
        int k = 0;
        int k2 = 0;


        for(int i = from; i != to; i += step) {

            if ( (arr2[i]%2)==0 ) {
                
                if (k < 2) {
                    s1 = s1 + i;
                    k++;
                }
                
                    else {
                        s2 = s2 + i;
                        k2++;
                        
                        if (k2 == 2) {
                            k2 = 0;
                            k = 0;
                            s = s1 + s2;
                            System.out.println(getName() + "   s1 = " + s1);
                            System.out.println(getName() + "   s2 = " + s2);
                            System.out.println(getName() + "    s = " + s );
                            s2 = 0;
                            s1 = 0;
                            s = 0;
                        }
                    } // end esle k 
            } // end paritate
        } //end for


        try { Thread.sleep(3500); } 
        catch (InterruptedException e) { e.printStackTrace(); }

        System.out.println(" ");
        int t = 0;
        while (t < data.length())
        {
            System.out.print(data.charAt(t));
            try { Thread.sleep(50); } 
            catch (InterruptedException e) { e.printStackTrace(); }

            t++;
        }

    }
}






class Counter3 extends Thread {
    private int from, to, step;
    String data;

    public Counter3(int from, int to, int step,String str) {
        this.data = str;
        this.from = from;
        this.to = to;
        this.step = step;
    }

    public void run() {
        int ii = 1;
        int S = 0;
        int i = from;

        while(i < to) {
            System.out.println(i + " " + getName());
            i += step;
        }

        try {
            Thread.sleep(4000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        System.out.println(" ");
        int t = 0;
        while (t < data.length())
        {
            System.out.print(data.charAt(t));
            try { Thread.sleep(10); } 
            catch (InterruptedException e) { e.printStackTrace(); }

            t++;
        }

    }
}


class Counter4 extends Thread {
    private int from, to, step;
    String data;

    public Counter4(int from, int to, int step,String str) {
        this.data = str;
        this.from = from;
        this.to = to;
        this.step = step;
    }

    public void run() {
        int ii=1;
        int S=0;
        int i=from;
        while(i < to) {
            System.out.println(i + " " + getName());
            i += step;
        }

        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        System.out.println(" ");
        int t=0;
        while (t < data.length()) {
            System.out.print(data.charAt(t));
            try { Thread.sleep(50); } 
            catch (InterruptedException e) { e.printStackTrace(); }

            t++;
        }

    }
}





public class lab3 {

    public static void cls() {
        try {
            new ProcessBuilder("cmd", "/c", "cls").inheritIO().start().waitFor();
        } catch (Exception e1) {
            System.out.println(e1);
        }
    }

    public static void main(String[] args)
    {

        System.out.println();
        System.out.println();
        System.out.println();


        Counter1 cnt1;
        Counter2 cnt2;
        Counter3 cnt3;
        Counter4 cnt4;

        Random rd = new Random(); 
        int[] arr = new int[115];

        cls();
            
        System.out.println("tabloul generat");
        for (int i = 0; i < arr.length; i++) {
            arr[i] = rd.nextInt(101); 
            // System.out.print(arr[i] + " "); 
            // if (i == 25) System.out.println();
            // if (i == 50) System.out.println();
            // if (i == 75) System.out.println();
        }

        System.out.println("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");

        String name = "Dumitru";
        String lastName = "Melniciuc";
        String group = "c-171";
        String object = "Programarea concurenta si distributiva";

        cnt1 = new Counter1(15, 115, 1, arr, lastName);
        cnt2 = new Counter2(106, 6, -1, arr, name);
        cnt3 = new Counter3(234, 798, 1, object);
        cnt4 = new Counter4(123, 890, 1, group);
        
        cnt1.start();
        cnt2.start();        
        // try {
        //     cnt1.join();
        // } catch (InterruptedException e) {
        //     e.printStackTrace();
        // }

        cnt3.start();
        cnt4.start();


        // try {
        //     cnt4.join();
        // } catch (InterruptedException e) {
        //     e.printStackTrace();
        // }

    }
}





// public class Main {

//     static Sum1 th1 = new Sum1();
//     static Sum2 th2 = new Sum2();
//     static Parse1 th3 = new Parse1();
//     static Parse2 th4 = new Parse2();

//     static int fromS1 = 100;
//     static int toS1 = 200;

//     static int fromS2 = 106;
//     static int toS2 = 2;

//     static int fromP1 = 567;
//     static int toP1 = 1002;

//     static int fromP2 = 1100;
//     static int toP2 = 567;

//     //Classes

//     static class Sum1 extends Thread {
//         public void run() {
//             int s1;
//             int s2;
//             int s = 0;
//             int i;
//             String name = "Andrei";

//             i = fromS1;
//             while (i != toS1 && i > -1 && i < toS1 + 1) {
//                 if (true) {
//                     s1 = i * (i + 2);
//                     i += 2 * 2;
//                     do {
//                         if (i > -1 && i < toP1 + 1) {
//                             s2 = i * (i + 2);
//                             s = s1 + s2;
//                             System.out.println(this.getName() + " | p1 = "  + s1 + " | p2 = " + s2 + " | sum = " + s);
//                             try {
//                                 Thread.sleep(100);
//                             } catch (InterruptedException e) {
//                                 e.printStackTrace();
//                             }
//                             break;
//                         }
//                         i += 2 * 2;
//                     } while (true);
//                 }
//                 i += 2 * 2;
//             }
//             while (th4.isAlive()) {
//                 try {
//                     Thread.sleep(1000);
//                 } catch (InterruptedException e) {
//                     e.printStackTrace();
//                 }
//             }
//             System.out.print("1: ");
//             for (int j = 0; j < name.length(); j++) {
//                 System.out.print(name.charAt(j));
//                 try {
//                     Thread.sleep(200);
//                 } catch (InterruptedException e) {
//                     e.printStackTrace();
//                 }
//             }
//             System.out.println("");
//         }
//     }

//     static class Sum2 extends Thread {

//         public void run() {
//             int s1;
//             int s2;
//             int s = 0;
//             int i;
//             String name = "Miron";

//             i = fromS2;
//             while (i != toS2 && i > -1 && i < toS2 + 1) {
//                 if (true) {
//                     s1 = i * (i + -2);
//                     i += -2 * 2;
//                     do {
//                         if (i > -1 && i < toS2 + 1) {
//                             s2 = i * (i + (-2));
//                             s = s1 + s2;
//                             System.out.println(this.getName() + " | p1 = "  + s1 + " | p2 = " + s2 + " | sum = " + s);
//                             try {
//                                 Thread.sleep(100);
//                             } catch (InterruptedException e) {
//                                 e.printStackTrace();
//                             }
//                             break;
//                         }
//                         i += (-2) * 2;
//                     } while (true);
//                 }
//                 i += (-2) * 2;
//             }
//             try {
//                 Thread.sleep(2000);
//             } catch (InterruptedException e) {
//                 e.printStackTrace();
//             }
//             System.out.print("2: ");
//             for (int j = 0; j < name.length(); j++) {
//                 System.out.print(name.charAt(j));
//                 try {
//                     Thread.sleep(200);
//                 } catch (InterruptedException e) {
//                     e.printStackTrace();
//                 }
//             }
//             System.out.println("");
//         }
//     }

//     static class Parse1 extends Thread {
//         String name = "Programarea concurenta si distribuita";
//         public void run() {
//             System.out.println("Started thread " + this.getName());
//             for (int i = fromP1; i < toP1; i++) {
//                 System.out.print(" " + i + " ");
//                 if (i % 30 == 0)
//                     System.out.println("");
//             }
//             System.out.println("");
//             while (th1.isAlive()) {
//                 try {
//                     Thread.sleep(1000);
//                 } catch (InterruptedException e) {
//                     e.printStackTrace();
//                 }
//             }
//             System.out.print("3: ");
//             for (int j = 0; j < name.length(); j++) {
//                 System.out.print(name.charAt(j));
//                 try {
//                     Thread.sleep(200);
//                 } catch (InterruptedException e) {
//                     e.printStackTrace();
//                 }
//             }
//             System.out.println("");
//         }

//     }

//     static class Parse2 extends Thread {
//         String name = "C-171";
//         public void run() {
//             System.out.println("Started thread " + this.getName());
//             for (int i = fromP2; i > toP2; i--) {
//                 System.out.print(" " + i + " ");
//                 if (i % 30 == 0)
//                     System.out.println("");
//             }
//             System.out.println("");
//             while (th2.isAlive()) {
//                 try {
//                     Thread.sleep(1000);
//                 } catch (InterruptedException e) {
//                     e.printStackTrace();
//                 }
//             }
//             System.out.print("4: ");
//             for (int j = 0; j < name.length(); j++) {
//                 System.out.print(name.charAt(j));
//                 try {
//                     Thread.sleep(200);
//                 } catch (InterruptedException e) {
//                     e.printStackTrace();
//                 }
//             }
//             System.out.println("");
//         }
//     }

//     public static void main(String[] args) {

//         th1.setName("Th1");
//         th2.setName("Th2");
//         th3.setName("Th3");
//         th4.setName("Th4");

//         th1.start();
//         th2.start();
//         th3.start();
//         th4.start();

//         try {
//             th1.join();
//             th2.join();
//             th3.join();
//             th4.join();
//         } catch (InterruptedException e) {
//             e.printStackTrace();
//         }

//     }
// }

