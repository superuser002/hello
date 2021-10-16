#include <stdio.h>
#include <ctype.h>
char p[100][100];
int n;

void add_to_r(char r[100], char c)
{
    int i = 0;
    for (i = 0; r[i] != NULL; i++)
    {
        if (r[i] == c)
        {
            return;
        }
    }

    r[i] = c;
    r[i + 1] = NULL;
}

void first(char r[100], char c)
{
    int i, j, k, ne = 0;
    char subr[100];
    subr[0] = NULL;
    r[0] = NULL;
    if (!(isupper(c)))
    {
        add_to_r(r, c);
        return;
    }
    for (i = 0; i < n; i++)
    {
        if (p[i][0] == c)
        {
            if (p[i][3] == '^')
            {
                add_to_r(r, '^');
            }
            else
            {
                j = 3;
                while (p[i][j] != NULL)
                {

                    ne = 0;
                    first(subr, p[i][j]);
                    for (k = 0; subr[k] != NULL; k++)
                    {
                        if (subr[k] != '^')
                        {
                            add_to_r(r, subr[k]);
                        }
                        if (subr[k] == '^')
                        {
                            ne = 1;
                        }
                        if (subr[k] == '^' && p[i][j + 1] == NULL)
                        {
                            add_to_r(r, '^');
                        }
                    }
                    if (ne == 0)
                    {
                        break;
                    }
                    j++;
                }
            }
        }
    }
}

void main()
{
    int i;
    char c, r[100];

    printf("Enter n = ");
    scanf("%d", &n);
    printf("Enter production =\n ");
    for (i = 0; i < n; i++)
    {
        scanf(" %s", p[i]);
    }
    do
    {
        printf("Enter character to find first = ");
        scanf(" %c", &c);
        first(r, c);
        printf("first is : {");
        for (i = 0; r[i] != NULL; i++)
        {
            printf("%c", r[i]);
        }
        printf("}\n");
    } while (c != '@');
}

