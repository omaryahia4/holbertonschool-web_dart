int add(int a, int b)
{
    return a + b;
}

int sub(int a, int b)
{
    return a - b;
}

String showFunc(int a, int b)
{
    int x = add(a, b);
    int y = sub(a, b);
    String res = "Add ${a} + ${b} = ${x}\nSub ${a} - ${b} = ${y}";
    return res;
}
