
import java.util.Arrays;
public class Main {
    public static void main(String[] args) {
        int[] X = {1, 10, 4, 3, 2, 5, 4, 4, 3, 3, 1};
        int l = fmax(X);
        int[] resultlist = new int [l+1];
        for (int i = 0; i < l+1; i = i + 1) {
            resultlist[i] = ntimes(i, X);
        }
        System.out.println(Arrays.toString(resultlist));
    }

    public static int fmax(int[] a) {
        int count = 0;
        int max = a[0];
        while (a.length > count) {
            if (a[count] > max) {
                max = a[count];
            }
            count = count + 1;
        }
        return max;
    }

    public static int ntimes(int n, int[] a) {
        int count = 0;
        for (int j : a) {
            if (j == n) {
                count = count + 1;
            }
        }
        return count;
    }
}