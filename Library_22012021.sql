Use Library_Krl;
Create table "Район" ("Id_район" int identity primary key not null, "Район" varchar(60) not null);
Create table "Улица" ("Id_улица" int identity primary key not null, "Улица" varchar(60) not null);
Create table "Дом" ("Id_дом" int identity primary key not null, "№ Дома" varchar(6) not null);
Create table "Квартира" ("Id_кв" int identity primary key not null, "№ Кв" varchar(6) not null);
Create table "Адрес" ("Id_Адрес" int identity primary key not null, "Район" int foreign key references "Район" (Id_район), "Улица" int foreign key references "Улица" (Id_улица) not null, 
"Дом" int foreign key references "Дом" (Id_дом), "Квартира" int foreign key references "Дом" (Id_дом));

Create table "Категория" ("Id_категория" int identity primary key not null, "Наименование_категории" varchar(40) not null);
Create table "Книги" ("Id_книги" int identity primary key not null, "Название_книги" varchar(60) not null, "Автор" varchar(40) not null, "Категория" int foreign key references "Категория" (Id_категория) not null);
Create table "Карты_Читателей" ("Id_читателя" int identity primary key not null, "Фамилия" varchar(30)not null,  "Имя" varchar(30) not null,  "Отчество" varchar(30), "Адрес" int foreign key references "Адрес" (Id_Адрес) not null, 
"Книга" int foreign key references "Книги" (Id_книги) not null, "Дата_выдачи" date, "Возврат" varchar(3) check (Возврат = 'Да' OR Возврат = 'Нет') not null, "Дата_возврата" date);
