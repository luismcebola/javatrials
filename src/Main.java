public class Main {

    public static void main(String[] args) {
        int x[],i,j,key;
        x={2,7,4,5,2,8};
        for (i=0;i< x.length;i++){
            key=x[i];
            j=i-1;
            while (j>=0 && x[j]>key){
                x[j+1]=x[j];
                j=j-1;
            }
            x[j+1]=key;
        }
        System.out.println(x);
    }
}