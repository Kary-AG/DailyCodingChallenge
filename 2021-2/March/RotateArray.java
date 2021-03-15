public class RotateArray{
    public static void main(String[] args){
        int[] nums ={1,2,3,4,5,6,7};
        int k =3;
        rotate(nums, k);
    }
    public static int[] rotate(int[] nums , int k){
        for(int i=0; i<k; i++){
            int last = nums[nums.length-1];
            for(int j =nums.length-1;j>0;j--)
                nums[j]=nums[j-1];
            nums[0]=last;
        }
        return nums;

    }

    public static void println(int[] array){
        for(int i = 0; i<array.length; i++)
            System.out.println(array[i]);
    }
    
}
