#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
void main()
{
	char in[100];
	int i,s[100];
	int t=1;
	
	printf("Enter the String = ");
	gets(in);
	for(i=0;in[i]!=NULL;i++)
	{
		s[i]=0;
	}
	for(i=0;in[i]!=NULL;i++)
	{
		if(in[i]=='+' || in[i] =='-')
		{	
			if(s[i-1]==0 && s[i+1]==0)
			{
				printf("\n%c\t%c\t%c\tt%d",in[i],in[i-1],in[i+1],t);
				s[i-1]=s[i+1]=t;
				t++;
			}
			else if(s[i-1]!=0 && s[i+1]==0)
			{
				printf("\n%c\tt%d\t%c\tt%d",in[i],s[i-1],in[i+1],t);
				s[i-1]=s[i+1]=t;
				t++;
			}
		}
	}
	t--;
	printf("\n%c\tt%d\t-\t%c\n",in[1],t,in[0]);
}
