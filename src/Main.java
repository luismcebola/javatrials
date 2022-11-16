
public class Main {
    public static void main(String[] args) {
        String[] X={"er", "trrtw","wer","er","Jackpot","se","vsdf","wer"};
        int pos=-1;
        for(int i=0; i < X.length;i=i+1) {
            if (X[i] == ("Jackpot")) {
                pos = i;
            }
        }
        System.out.println(pos);
    }
}