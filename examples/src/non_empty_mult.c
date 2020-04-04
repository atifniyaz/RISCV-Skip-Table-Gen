int main(int argc, char** argv)
{
	int x = 20;
	int y = 5;
	if (x == 0) {
	    goto end;
	}
	int z = x * y;
	int a = x / y;
	int b = x % y;
end:
	return 0;
}
