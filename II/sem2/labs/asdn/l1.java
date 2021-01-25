import javax.swing.*; 
import java.util.Scanner;
import java.io.*;

// intro propozitie un char un nr long 
// din poz 10 intro long
// int 

class l1 {
	public static void main(String[] args) throws IOException {
	int[] arr1 = new int[]{
		0,0,0,0,
		0,0,0,0,

		0,0,0,1,

		0,0,1,1,
		0,0,1,1,
		0,0,1,1,

		0,0,1,0,
		0,0,1,0,
		0,0,1,0,

		0,1,1,0,
		0,1,1,0,

		0,1,1,1,

		0,1,0,1,
		0,1,0,1,
		0,1,0,1,
		0,1,0,1,

		0,1,0,0,
		0,1,0,0,

		1,1,0,0,
		1,1,0,0,

		1,1,0,1
	};

	int[] arr2 = new int[]{
		0,0,0,0,
		0,0,0,1,

		0,0,1,1,

		0,0,1,0,
		0,1,1,0,
		0,1,1,1,

		0,1,1,0,
		0,1,1,1,
		0,1,0,1,

		0,1,1,1,
		0,1,0,1,

		0,1,0,1,

		0,1,1,1,
		0,1,0,0,
		1,1,0,0,
		0,1,0,1,

		1,1,0,0,
		1,1,0,1,

		1,1,0,1,
		1,1,0,0,

		0,0,0,0
	};

	int z = 1;
	int d = 1;

	File file = new File("in.txt");
	FileWriter fw = new FileWriter(file);
	PrintWriter pw = new PrintWriter(fw);
	String str = new String();

	int k = 1;

	for (int i = 0; i < 84; i++)
	{
		// if (k == 1) {
		// 	System.out.print(z + ")  ");
		// 	str = str + z + ") ";
		// }
			
		
		if ( (arr1[i] == 0) && (arr2[i] == 1) ) {
			if (k == 1) {
				System.out.print("j3");	
				str = str + "j3";
			}
			if (k == 2) {
				System.out.print("j2");	
				str = str + "j2";
			}
			if (k == 3) {
				System.out.print("j1");	
				str = str + "j1";
			}
			if (k == 4) {
				System.out.print("j0");				
				str = str + "j0";
			}
		}


		if ( (arr1[i] == 1) && (arr2[i] == 0) ) {
			if (k == 1) {
				System.out.print("k3");	
				str = str + "k3";
			}
			if (k == 2) {
				System.out.print("k2");	
				str = str + "k2";
			}
			if (k == 3) {
				System.out.print("k1");	
				str = str + "k1";
			}
			if (k == 4) {
				System.out.print("k0");	
				str = str + "k0";
			}
			
		}
		k++;
		if (k > 4) {
			k = 1;
			z++;
			System.out.println("\n-------\n");
			str = str + '\n';
			str = str + "-------" ;
			str = str + '\n';
		}
		
	}

pw.println(str);



	pw.close();

	}
}



// 0,0,0,0,
// 0,0,0,0,

// 0,0,0,1,

// 0,0,1,1,
// 0,0,1,1,
// 0,0,1,1,

// 0,0,1,0,
// 0,0,1,0,
// 0,0,1,0,

// 0,1,1,0,
// 0,1,1,0,

// 0,1,1,1,

// 0,1,0,1,
// 0,1,0,1,
// 0,1,0,1,
// 0,1,0,1,

// 0,1,0,0,
// 0,1,0,0,

// 1,1,0,0,
// 1,1,0,0,

// 1,1,0,1


// ~,~,~,~,~~~~~~~~~``


// 0,0,0,0,
// 0,0,0,1,

// 0,0,1,1,

// 0,0,1,0,
// 0,1,1,0,
// 0,1,1,1,

// 0,1,1,0,
// 0,1,1,1,
// 0,1,0,1,

// 0,1,1,1,
// 0,1,0,1,

// 0,1,0,1,

// 0,1,1,1,
// 0,1,0,0,
// 1,1,0,0,
// 0,1,0,1,

// 1,1,0,0,
// 1,1,0,1,

// 1,1,0,1,
// 1,1,0,0,

// 0,0,0,0
