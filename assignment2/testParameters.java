

class testParameters {
    public static void testPrimitiveValue(int formal1) {
        formal1 = 12;
    }

    public static void testArrays(int formal1[]) {
        formal1[0] = 12;
        formal1[formal1.length-1] = 6;
    }

    public static void printArray(int array[]) {
        for (int i=0; i<array.length; i++) {
            System.out.print(array[i] + " ");
        }
    }

    public static void main(String args[]) {
        //      ****TESTING PRIMITIVE VALUE PARAMETERS****
        int actual1;
        actual1 = 0;
        System.out.println("primitive before function call: " + actual1);
        testPrimitiveValue(actual1);
        System.out.println("primitive after function call: " + actual1);

        //      ****TESTING ARRAY PARAMETERS****
        int actual2[] = {0, 0, 0};
        System.out.print("Array before function call: ");
        printArray(actual2);
        System.out.println();
        testArrays(actual2);
        System.out.print("Array after function call: ");
        printArray(actual2);
        
        
    }
}