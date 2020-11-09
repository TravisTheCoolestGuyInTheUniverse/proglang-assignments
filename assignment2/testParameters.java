
class testParameters {
    public static void testPrimitiveValue(int formal1) {
        System.out.println("primitive during function call: " + formal1);
        formal1 = 12;
    }

    public static void testArrays(int formal1[]) {
        System.out.print("Array during function call: ");
        printArray(formal1);
        System.out.println();
        formal1[0] = 12;
        formal1[formal1.length-1] = 6;
    }

    public static void printArray(int array[]) {
        for (int i=0; i<array.length; i++) {
            System.out.print(array[i] + " ");
        }
    }

    public static void testClass(Simple formal1) {
        System.out.println("member variables inside function call: " + formal1.x + " " + formal1.yeet);
        formal1.x = 1;
        formal1.yeet = "no yeet";

    }

    public static class Simple {
        public int x = 7;
        public String yeet = "yeet!";
    }

    public static void main(String args[]) {
        System.out.println("****TESTING JAVA****");
        //      ****TESTING PRIMITIVE VALUE PARAMETERS****
        int actual1 = 0;
        System.out.println("primitive before function call: " + actual1);
        testPrimitiveValue(actual1);
        System.out.println("primitive after function call: " + actual1);
        System.out.println();

        //      ****TESTING ARRAY PARAMETERS****
        int actual2[] = {0, 0, 0};
        System.out.print("Array before function call: ");
        printArray(actual2);
        System.out.println();
        testArrays(actual2);
        System.out.print("Array after function call: ");
        printArray(actual2);
        System.out.println();
        System.out.println();

        //      ****TESTING CLASS OBJECT PARAMETERS****
        Simple actual3 = new Simple();
        System.out.println("member variables before function call: " + actual3.x + " " + actual3.yeet);
        testClass(actual3);
        System.out.println("member variables after function call: " + actual3.x + " " + actual3.yeet);
    }
}


