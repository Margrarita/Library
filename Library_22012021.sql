Use Library_Krl;
Create table "�����" ("Id_�����" int identity primary key not null, "�����" varchar(60) not null);
Create table "�����" ("Id_�����" int identity primary key not null, "�����" varchar(60) not null);
Create table "���" ("Id_���" int identity primary key not null, "� ����" varchar(6) not null);
Create table "��������" ("Id_��" int identity primary key not null, "� ��" varchar(6) not null);
Create table "�����" ("Id_�����" int identity primary key not null, "�����" int foreign key references "�����" (Id_�����), "�����" int foreign key references "�����" (Id_�����) not null, 
"���" int foreign key references "���" (Id_���), "��������" int foreign key references "���" (Id_���));

Create table "���������" ("Id_���������" int identity primary key not null, "������������_���������" varchar(40) not null);
Create table "�����" ("Id_�����" int identity primary key not null, "��������_�����" varchar(60) not null, "�����" varchar(40) not null, "���������" int foreign key references "���������" (Id_���������) not null);
Create table "�����_���������" ("Id_��������" int identity primary key not null, "�������" varchar(30)not null,  "���" varchar(30) not null,  "��������" varchar(30), "�����" int foreign key references "�����" (Id_�����) not null, 
"�����" int foreign key references "�����" (Id_�����) not null, "����_������" date, "�������" varchar(3) check (������� = '��' OR ������� = '���') not null, "����_��������" date);
