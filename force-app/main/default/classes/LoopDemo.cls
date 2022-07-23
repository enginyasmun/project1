public class LoopDemo {
    public void print_int_while() {
        integer count = 1;
        while (count <= 25){
            System.debug(count);
            count++;

        }
    }
    public void print_N_number(integer n){
        for (integer i=0; i<n; i++){
            System.debug(i);
        }
    }
}