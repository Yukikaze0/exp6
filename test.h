#pragma once
#include <winsock.h> //注意顺序，要放在mysql.h前
#include <mysql.h>//控制台项目中要在mysql.h之前include <winsock.h>
#include <iostream>
#include <sstream>
#include <cmath>
#include <random>
#include <iomanip>
#define _USE_MATH_DEFINES
#include "time.h"     //用到时间函数
#include "math.h"    // 用到随机函数
#pragma execution_character_set("utf-8")
using namespace std;

void insertinfo(MYSQL *pConn)
{
	char type1[3][30] = { "学生", "体力劳动者", "脑力劳动者" };
	char type2[2][30] = { "男", "女" };

	time_t t;   // 定义时间变量
	srand((unsigned)time(&t));  //由时间确定随机序列，执行一次

	/*
	第二种存数方式示例
	string sql;
	string id, age;
	string profession, sex;
	stringstream ss;
	for (int i = 0; i < 50; i++) {
		string sql;
		string id, age;
		string profession, sex;
		stringstream ss;

		profession = type1[rand() % 4];
		sex = type2[rand() % 3];
		ss << i;
		id = ss.str();
		ss << rand() % 100;
		age = ss.str();

		sql = "insert into `info` values(" + id + ",'" + profession + "'," + age + ",'" + sex + "')";
		printf(sql.c_str());
		if (mysql_query(pConn, sql.c_str()))printf("插入成功");
	}
	*/



	char * profession, *sex;
	int id, age;
	char temp[255];
	int temp1;

	random_device rd;
	mt19937 gen(rd());
	normal_distribution<double> normal(0, 4);
	for (int i = 0; i < 100; i++) {
		temp1 = rand() % 100;
		if (temp1 < 60)
			profession = type1[0];
		else if (temp1 < 80)
			profession = type1[1];
		else
			profession = type1[2];
		sex = type2[rand() % 2];
		id = i;
		age = normal(gen) + 22;

		memset(temp, 0, sizeof(temp));
		sprintf(temp, "insert into `info` values(%d,'%s',%d,'%s')", id, profession, age, sex);
		cout << temp;
		if (mysql_query(pConn, temp))printf("插入成功\n");
	}
}

void insertphone(MYSQL *pConn)
{
	time_t t;   // 定义时间变量
	srand((unsigned)time(&t));  //由时间确定随机序列，执行一次
	random_device rd;
	mt19937 gen(rd());

	normal_distribution<double> screensize1(0.0, 0.6);
	int type2[4] = { 120,150,180,210 };
	char type3[6][4] = { "红","黑","白","金","蓝","绿" };
	int type4[7] = { 24,48,72,96,168,360,720 };
	char type5[4][3] = { "1K","2K","4K","8K" };
	char type6[5][25] = { "无所谓","低","中","高","极高"};


	char * color, *pixel,*photo;
	int id,standbytime,weight;
	double screensize;
	char temp[255];
	int temp1;


	for (int i = 0; i < 100; i++) {
		setprecision(2);
		screensize = screensize1(gen) + 5.0;

		temp1 = rand() % 100;
		if (temp1 < 10)
			pixel = type5[0];
		else if (temp1 < 20)
			pixel = type5[1];
		else if (temp1 < 70)
			pixel = type5[2];
		else
			pixel = type5[3];

		temp1 = rand() % 100;
		if (temp1 < 10)
			color = type3[0];
		else if (temp1 < 40)
			color = type3[1];
		else if (temp1 < 60)
			color = type3[2];
		else if (temp1 < 75)
			color = type3[3];
		else if (temp1 < 90)
			color = type3[4];
		else
			color = type3[5];

		temp1 = rand() % 100;
		if (temp1 < 10)
			weight = type2[0];
		else if (temp1 < 60)
			weight = type2[1];
		else if (temp1 < 80)
			weight = type2[2];
		else
			weight = type2[3];

		temp1 = rand() % 100;
		if (temp1 < 8)
			standbytime = type4[0];
		else if (temp1 < 30)
			standbytime = type4[1];
		else if (temp1 < 60)
			standbytime = type4[2];
		else if (temp1 < 80)
			standbytime = type4[3];
		else if (temp1 < 90)
			standbytime = type4[4];
		else if (temp1 < 95)
			standbytime = type4[5];
		else
			standbytime = type4[6];

		random_device rd;
		mt19937 gen(rd());
		normal_distribution<double> normal(0, 1);
		int temp6 = normal(gen)+2;
		if (temp6 > 4)temp6 = 4;
		if (temp6 < 0)temp6 = 0;
		photo = type6[temp6];

		id = i;
		sprintf(temp, "insert into `phone` values(%d,%f,%d,'%s',%d,'%s','%s')", id, screensize, weight, color, standbytime, pixel, photo);
		cout << temp;
		if (mysql_query(pConn, temp))printf("插入成功\n");
	}
}


void test1()
{
	MYSQL *pConn;
	pConn = mysql_init(NULL);
	//第2、3、4、5参数的意思分别是：服务器地址、用户名、密码、数据库名，第6个为mysql端口号（0为默认值3306）
	if (!mysql_real_connect(pConn, "localhost", "root", "123456", "phone", 0, NULL, 0))
	{
		printf("无法连接数据库:%s", mysql_error(pConn));
		return;
	}
	else {
		printf("连接成功");
	}
	mysql_query(pConn, "set names utf8");//防止乱码。设置和数据库的编码一致就不会乱

	insertinfo(pConn);
	insertphone(pConn);

	mysql_close(pConn);
}

