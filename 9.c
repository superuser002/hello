#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<string.h>

char p[100][100],r[100];
int i,j,n;

void addtor(char c)
{
        int k;
        for(k=0;r[k]!=NULL;k++)
	{
                if(r[k]==c)
		{
                        return;
                }                
        }
        r[k]=c;
        r[k+1]==NULL;
}

void first(char c)
{
        if(islower(c))
	{
                addtor(c);
        }
        else
	{
                for(int k=0;k<n;k++)
		{
                        if(p[k][0]==c)
			{
                                if(p[k][3]=='^')
				{
                                        first(p[i][j+2]);
                                }
                                else if(islower(p[k][3]))
				{
                                        addtor(p[k][3]);
                                }
                                else
				{
                                        first(p[k][3]);
                                }
                        }
                }
        }
        return;
}


void follow(char c)
{

        if(p[0][0]==c)
	{
                addtor('$');
        }

        for(i=0;i<n;i++)
	{
                for(j=3;j<strlen(p[i]);j++)
		{
                        if(p[i][j]==c)
			{
                                if(p[i][j+1]==NULL && p[i][0]!=c)
				{
                                        follow(p[i][0]);
                                }
                                else if(p[i][j+1]!=NULL)
				{
                                        first(p[i][j+1]);
                                }
                        }
                }
        }
}

void main()
{
	int k;
	char c;
	printf("\nEnter no. of rules = ");
	scanf("%d",&n);
	for(k=0;k<n;k++)
	{
		scanf("%s",p[k]);
	}
	// printf("\n");
	printf("\nYour Entered rules are =\n");
	for(k=0;k<n;k++)
	{
		puts(p[k]);
	}

	do{
		r[0]=NULL;
		printf("\n Enter character to find FOLLOW = ");
		scanf("%s",&c);
		
		follow(c);
		printf("\nFollow : {");
		
		for(k=0;r[k]!=NULL;k++)
		{
		        printf("%c,",r[k]);
		}
		printf("}");
	}while(c!='@');
}
