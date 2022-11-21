
public class Main {
    public static void main(String[] args) {
        String[] X = new String[]{"A", "B", "C", "C", "A"};
        int count = 0;
        int result = 0;
        if (X.length == 0) {
            System.out.println(result);
        } else if (X.length % 2 == 0) {
            for (int i = 0; i < X.length / 2; i = i + 1) {
                if (X[i] == X[X.length - 1 - i]) {
                    count = count + 1;
                }
            }
            if (count == X.length / 2) {
                result = 1;
                System.out.println(result);
            }
        } else {
            for (int i = 0; i < X.length / 2; i = i + 1) {
                if (X[i] == X[X.length - 1 - i]) {
                    count = count + 1;
                }
            }
            if (count == X.length / 2) {
                result = 1;
                System.out.println(result);
            }
        }
        System.out.println(result);
    }
}
