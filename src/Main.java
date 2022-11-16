public class Main {
    public static void main(String[] args) {
        double result = sq(3.4);
        System.out.println(result);
    }
    public static double sq(double k) {
        if (k > 1) {
            return sq(k-1) + k + k - 1;
        } else {
            return k*k;
        }
    }
}