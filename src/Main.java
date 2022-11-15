import java.util.Arrays;
public class Main {

    public static void main(String[] args) {
        int i,j;
        double key;
        double[] X={0,1.4,10,4,7,6,1000, 9.3,6.4};
        for (i=0;i< X.length;i++){
            key=X[i];
            j=i-1;
            while (j>=0 && X[j]>key){
                X[j+1]=X[j];
                j=j-1;
            }
            X[j+1]=key;
        }
        System.out.println(Arrays.toString(X));
    }
}

