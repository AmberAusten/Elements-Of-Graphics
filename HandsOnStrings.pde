// Hands on: Using Strings 
// Amber Vasquez,kav835

PrintWriter output; 
 
void setup (){
  
  String[] lines = loadStrings("documents/processing/data/mytext.txt"); // read my text into Processing
  
  output = createWriter("words.txt");

  for (int i = 0 ; i < lines.length; i++) {   //count length of each line 
    print("Line " + (i+1) + " length = ");
    print(lines[i].length());
    print(", # words = ");
     
    String[] words = split(lines[i], ' '); // spilt each line into words
    println(words.length);    
     
    for (int j = 0; j < words.length; j++) { // print out each word with Printwriter
      output.println(words[j]);
    }
   }

  output.flush();
  output.close();

}
void draw (){
     

  
}
