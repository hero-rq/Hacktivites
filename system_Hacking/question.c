#include<stdio.h>
int main (void)
{
int i,max=0;
char a[5001],dap[130]={0};
for(i=0;scanf("%c", &a[i])!=EOF;i++)
{
		dap[a[i]]++;
}
for(i=97;i<=122;i++)
{
	if(max<dap[i])
	{
	max=dap[i];
	}
}
for(i=97;i<=122;i++)
{
if(max==dap[i])
{printf("%c",i);}
}

return 0;
}
