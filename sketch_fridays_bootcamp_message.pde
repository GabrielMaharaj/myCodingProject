void setup()
{
  String message = "Hello from Friday's bootcamp";
 
  println(message.toUpperCase());
  println(message.toLowerCase());
  println(message.length());
  println(message.charAt(4));
  if (message.contains("day")){println("Day Found");}
else {println("No match found"); }
}
