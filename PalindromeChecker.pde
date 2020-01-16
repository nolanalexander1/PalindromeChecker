public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
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
  String testStringA = new String();
  String testStringB = new String();
  testStringA = removeExtras(word);
  testStringB = reverse(testStringA);
  if((testStringA.toLowerCase()).equals(testStringB.toLowerCase()))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--)
    {
        sNew = sNew + str.substring(i-1, i);
    }
    return sNew;
}
public String removeExtras(String str)
{
  String sNew = new String();
  for(int i = 0; i < str.length(); i++)
  {
    if(str.substring(i,i+1).equals("!") || str.substring(i,i+1).equals(",") || str.substring(i,i+1).equals("'") || str.substring(i,i+1).equals(" "))
    {
      i = i;
    }
    else 
    {
      sNew = sNew + str.substring(i, i+1);
    }
  }
  return sNew;
}

