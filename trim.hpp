char* trim(char *str)
{
	int len,k,i;
	if (str == NULL){
		char str;
	}
	len = strlen(str);
	k = 0;
	for (i=0; i<len; i++)
	{
		if ((str[i] != ' ')&&(str[i] != '\0'))
		{
			str[k]=str[i];
			k++;
		}
	}
	str[k]='\0';
	return str;
}
