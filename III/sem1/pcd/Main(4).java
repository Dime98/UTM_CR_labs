package com.company;
// X    Y   Z   D   Tip Obiecte
// 3    2   12  11  Consoane
// X prod
// Y consum
// Z nr obj
// D depo


import java.util.*;

public class Main {

    int X = 3;
    int Y = 2;
    int Z = 12;
    int D = 11;
    int[] state = new int[Y];

    public enum consonants {
        q, w, r, t, y, p, s, d, f, g, h, k, l, z, x, c, v, b, n, m
    }

    private static char extract() {
        int pick = new Random().nextInt(consonants.values().length);
        return consonants.values()[pick].toString().charAt(0);
    }

    public class Sync {

        Stack stack = new Stack();
        private boolean put = true;
        private boolean get = false;

        private boolean full() {
            if (stack.size() == D ) {
                System.out.println("plin");
                return false;
            } else
                return true;
        }

        private boolean empty() {
            if (stack.size() < 1) {
                System.out.println("gol");
                return false;
            } else
                return true;
        }

        public synchronized char get() {
            get = empty();

            while (!get) {
                try { wait(); }
                catch (InterruptedException e) {
                    get = empty();
                }
            }

            if (get) {
                try {
                    char temp = this.stack.pop().toString().charAt(0);
                    notifyAll();
                    put = this.full();
                    return temp;
                } catch (EmptyStackException e) {}
            }
            return 'w';
        }

        public synchronized void put(char ch) {
            put = full();

            while (!put) {
                try { wait(); }
                catch (InterruptedException e) {
                    put = full();
                }
            }

            if (put) {
                this.stack.push(ch);
                notifyAll();
                get = this.empty();
            }
        }
    }

    public class Producer extends Thread {

        private Sync buffer;
        private int number;

        public Producer(Sync c, int number) {
            buffer = c;
            this.number = number;
        }

        @Override
        public void run() {
            while (true) {
                char temp = extract();
                char temp1 = extract();
                System.out.println("Producer " + this.number + " puts: " + temp + ", " + temp1);
                buffer.put(temp);
                buffer.put(temp1);

                try {
                    sleep((int) (Math.random() * 100));
                } catch (InterruptedException e) {}
            }
        }
    }

    public class Consumer extends Thread {

        private Sync buffer;
        private int number;
        private int max = 3;
        private int consonants_Used = 0;

        public Consumer(Sync c, int number) {
            buffer = c;
            this.number = number;
        }

        @Override
        public void run() {
            char ch;
            while (consonants_Used < max) {
                ch = buffer.get();
                consonants_Used++;
                System.out.println("Consumer " + this.number + " got: " + ch + ", used " + consonants_Used + " letters");
            }

            state[this.number - 1] = 1;
            if (state()) { System.exit(0); }
        }
    }

    private boolean state() {
        for (int i = 0; i < Y; i++) {
            if (state[i] == 0)
                return false;
        }
        return true;
    }

    public void exe() {
        Sync c = new Sync();

        Producer p1 = new Producer(c, 1);
        Producer p2 = new Producer(c, 2);
        Producer p3 = new Producer(c, 3);
        Producer p4 = new Producer(c, 4);

        Consumer c1 = new Consumer(c, 1);
        Consumer c2 = new Consumer(c, 2);
        Consumer c3 = new Consumer(c, 3);

        p1.start();
        p2.start();
        p3.start();
        p4.start();

        c1.start();
        c2.start();
        c3.start();
    }
 
    public static void main(String[] args) {
        new Main().exe();
    }
}
