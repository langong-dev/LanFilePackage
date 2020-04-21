#include <iostream>
#include <cstdio>
#include <ctime>
#include <cstring>
using namespace std;

#include "trim.hpp"
char type[105];
char clas[105];
char name[105];
char temp[105];

int main(int argc, char* argv[])
{
	strcpy(type,argv[1]);
	//strcpy(type,trim(temp));
	strcpy(temp,"install");
	strcpy(temp,trim(temp));
	if(strlen(type)==7){
		strcpy(clas,argv[2]);
		//strcpy(clas,trim(temp));
		if(strlen(clas)==6){//GitHub
			printf(" Install form GitHub : \n\n\n");
			strcpy(temp,argv[3]);
			strcpy(name,trim(temp));
			char dobash[105];
			strcpy(dobash,"cd ~/LanGongFile/ && git clone https://github.com/");
			strcat(dobash,name);
			strcat(dobash,".git ");
			system(dobash);
			printf("\n\n Install successfully! \n");
			return 0;
		}
		else if(strlen(clas)==10){//langonggit
			printf(" Install from LanGit : \n\n\n");
			strcpy(name,argv[3]);
			char dobash[10005];
			strcpy(dobash,"cd ~/LanGongFile/ && mkdir ");
			strcat(dobash,name);
			strcat(dobash," && cd ");
			strcat(dobash,name);
			strcat(dobash," && wget https://langong-dev.github.io/doc/");
			strcat(dobash,name);
			strcat(dobash,".zip -o download.zip && unzip download.zip");
			system(dobash);
			printf("\n\n Install successfully! \n");
			return 0;
		}
		else if(strlen(clas)==3){//git
			printf(" Install form Git : \n\n\n");
			strcpy(name,argv[3]);
			char dobash[105];
			strcpy(dobash,"cd ~/LanGongFile/ && git clone ");
			strcat(dobash,name);
			system(dobash);
			printf("\n\n Install successfully! \n");
			return 0;
		}
		cout<<"Not Found this : "<<clas;
		return 1;
	}
	else if(strlen(type)==2){
		printf(" List: \n\n\n");
		system("cd ~/LanGongFile/ && ls -a");
		printf(" \n\n Load list successfully! \n");
		return 0;
	}
	else if(strlen(type)==3){
		char dobash[10005];
		strcpy(dobash,"bash run.sh ");
		strcat(dobash,argv[2]);
		system(dobash);
		return 0;
	}
	cout<<"Not Found this : "<<type;
	return 1;
}