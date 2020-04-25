#include <iostream>
#include <cstdio>
#include <ctime>
#include <cstring>
using namespace std;
class Err{
	char* a;
	char* d;
public:
	char*& name(){
		return a;
	}
	char*& des(){
		return d;
	}
}err;

#include "trim.hpp"
char type[105];
char clas[105];
char name[105];
char temp[105];

char* chu(char a[])
{
	char b[1005];
	char* c = new char ;
	strcpy(b,a);
	int ns=0,s=0;
	for(int i=0;i<strlen(b);i++)
	{
		if(ns==1)c[s++]=b[i];
		if(b[i]=='/')ns=1;
	}
	c[s]='\0';
	return c;
}

int main(int argc, char* argv[])
{
	try{
		if(argv[1]==NULL){
			char nameerr[]="Type";
			throw nameerr;
		}
		strcpy(type,argv[1]);
		//strcpy(type,trim(temp));
		strcpy(temp,"install");
		strcpy(temp,trim(temp));
		if(strcmp(type,"install")==0){
			if(argv[2]==NULL){
				char nameerr[]="Class";
				throw nameerr;
			}
			if(argv[3]==NULL){
				char nameerr[]="Name";
				throw nameerr;
			}
			strcpy(clas,argv[2]);
			//strcpy(clas,trim(temp));
			if(strcmp(clas,"github")==0){//GitHub
				printf(" Install form GitHub : \n\n\n");
				strcpy(temp,argv[3]);
				strcpy(name,trim(temp));
				char dobash[105];
				strcpy(dobash,"cd ~/LanGongFile/ && git clone https://github.com/");
				strcat(dobash,name);
				strcat(dobash,".git && cd ");
				strcat(dobash,chu(name));
				strcat(dobash," && bash before.sh");
				system(dobash);
				printf("\n\n Install successfully! \n");
				return 0;
			}
			else if(strcmp(clas,"langonggit")==0){//langonggit
				printf(" Install from LanGit : \n\n\n");
				strcpy(name,argv[3]);
				char dobash[10005];
				strcpy(dobash,"cd ~/LanGongFile/ && mkdir ");
				strcat(dobash,name);
				strcat(dobash," && cd ");
				strcat(dobash,name);
				strcat(dobash," && wget https://langong-dev.github.io/doc/");
				strcat(dobash,name);
				strcat(dobash,".zip -o download.zip && unzip download.zip && bash before.sh");
				system(dobash);
				printf("\n%s\n",dobash);
				printf("\n\n Install successfully! \n");
				return 0;
			}
			else if(strcmp(clas,"langong")==0){
				printf(" Install from LanGong Package : \n\n\n");
				strcpy(name,argv[3]);
				char dobash[10005];
				strcpy(dobash,"cd ~/LanGongFile/ && mkdir ");
				strcat(dobash,name);
				strcat(dobash," && cd ");
				strcat(dobash,name);
				strcat(dobash," && wget https://langong-dev.github.io/Package/pac/");
				strcat(dobash,name);
				strcat(dobash,".zip -O download.zip -o download.log && unzip download.zip && bash before.sh");
				system(dobash);
				printf("\n\n Install successfully! \n");
				return 0;
			}
			else if(strcmp(clas,"git")==0){//git
				printf(" Install form Git : \n\n\n");
				strcpy(name,argv[3]);
				char dobash[105];
				strcpy(dobash,"cd ~/LanGongFile/ && git clone ");
				strcat(dobash,name);
				strcat(dobash," && bash before.sh");
				system(dobash);
				printf("\n\n Install successfully! \n");
				return 0;
			}
			cout<<"Not Found this : "<<clas<<endl;
			return 1;
		}
		else if(strcmp(type,"ls")==0){
			printf(" List: \n\n\n");
			system("cd ~/LanGongFile/ && ls -a");
			printf(" \n\n Load list successfully! \n");
			return 0;
		}
		else if(strcmp(type,"run")==0){
			char dobash[10005];
			strcpy(dobash,"bash run.sh ");
			strcat(dobash,argv[2]);
			system(dobash);
			return 0;
		}
		else if(strcmp(type,"help")==0){
			system("bash help.sh");
			return 0;
		}
		cout<<"Not Found this : "<<type<<endl<<endl<<"Do you need help?"<<endl<<"Input './LanGong help' .";
		system("echo 'Error 1: Something not found.' >> ~/.config/LanFilePackage.log");
	}
	catch(char* ename){
		printf(" Oh! You did not input the %s .\n\n Need help?\n Input this './LanGong help'.\n",ename);
		system("echo 'Error 2: Something was not inputed.' >> ~/.config/LanFilePackage.log");
		return 2;
	}
	return 1;
}