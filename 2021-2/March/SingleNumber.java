public class SingleNumber{
    public static void main(String[] args){
        int[] nums={4,1,2,1,2};
        System.out.println(singleNumber(nums));

    }

    public static int singleNumber(int[] nums){
        int a= 0;
        for(int i : nums) //Operadores bitwise
            a^=i;
        return a;
    }
    public static void println(int[] array){
        for(int i = 0; i<array.length; i++)
            System.out.println(array[i]);
    }
}
