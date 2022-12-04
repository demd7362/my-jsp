import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import java.util.StringTokenizer;

import chap13.Clock;

class Person {
	static void get(Object type) {
		System.out.println(type);
	}
}




public class Example {

	public static void main(String[] args) throws IOException {
		
		System.out.println(new Clock() {

			

			@Override
			public String toString() {
				return now();
			}
			
		});
	}
}
