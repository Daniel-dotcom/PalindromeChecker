public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(onlyLetters(lines[i]))==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
    for(int i = 0; i<word.length(); i++){
    if(!word.substring(i,i+1).equals(word.substring(word.length()-i-1, word.length()-i)))
      return false;
  }
  return true;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = 0; i < sNew.length(); i++){
    sNew += str.substring(str.length()-i-1, str.length()-i);
    }
    return sNew;
}
public String onlyLetters(String sString){
  String str = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)))
      str += sString.charAt(i);
  }
  return str.toLowerCase();
}
