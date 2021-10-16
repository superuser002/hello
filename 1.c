#include<stdio.h>
#include<stdlib.h>
int q0(char c)
{
	if(c=='a')
	{
		return 1;
	}
	else if(c=='b')
	{
		return 0;
	}
	else
	{
		return (-1);
	}
}

int q1 (char c)
{
	if(c=='a')
	{
		return 1;
	}
	else if(c=='b')
	{
		return 2;
	}
	else
	{
		return (-1);
	}
}


int q2(char c)
{
	if(c=='a')
	{
		return 1;
	}
	else if(c=='b')
	{
		return 0;
	}
	else
	{
		return (-1);
	}
}

void main()
{
	char s[100];
	int i, state=0;
	printf("Enter string: -\t");
	gets(s);
	for(i=0;s[i]!=NULL;i++)
	{
		if(state==0)
		{
			state = q0(s[0]);
		}
		else if(state==1)
		{
			state = q1(s[i]);
		}
		else if(state==2)
		{
			state = q2(s[i]);
		}
		else
		{
			printf("Invalid Input:\t\n");
			exit(0);
		}
	}

	if(state==2)
	{
		printf("Valid String\n");
	}
	else
	{
		printf("Invalid String\n");
	}
}

