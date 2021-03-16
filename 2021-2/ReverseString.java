public class ReverseString{
    public static void main(String[] args){
        char[] ui = {'h','e','l','l','o',};
        int l  = ui.length;

        System.out.println("l: "+ l +" "+ l++ + " "+ l);
        //println(reverseString(ui));
    }

    public static char[] reverseString(char[] s){
        int left = 0, right = s.length-1;
        while(left<right){
            char tmp = s[left];
            s[left++] = s[right]; //s[0] y left = 1
            s[right--] = tmp;
        }
        return s;
    }

    public static void println(char[] s){
        for(int i =0; i<s.length;i++)
            System.out.println(s[i]);
    }
}
