CREATE TABLE Incident(
	RegistrationNumber INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	IncidentDate DATE,
	Description VARCHAR(10000),
	Decision VARCHAR(50)
);

CREATE TABLE CriminalCase(
	CriminalNumber INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	CriminalDate DATE,
	CriminalNote VARCHAR(10000),
        RegistrationNumber INTEGER UNIQUE
);

ALTER TABLE CriminalCase ADD FOREIGN KEY (RegistrationNumber)
REFERENCES Incident (RegistrationNumber) ON DELETE CASCADE;

CREATE TABLE Person(
	PersonNumber INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	FirstName VARCHAR(20),
	LastName VARCHAR(20),
	PassportNumber INTEGER,
	Address VARCHAR(100),
	BurnDate DATE,
	CourtRate INTEGER
);

CREATE TABLE Status(
	StatusNumber INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
	StatusName VARCHAR(50)
);

CREATE TABLE Article(
	ArticleNumber INTEGER PRIMARY KEY,
	ArticleName VARCHAR(500),
	Discription VARCHAR(10000)
);

CREATE TABLE ArticleApply(
	ArticleNumber INTEGER,
	CriminalNumber INTEGER
);

ALTER TABLE ArticleApply ADD FOREIGN KEY (ArticleNumber)
REFERENCES Article (ArticleNumber) ON DELETE CASCADE;
ALTER TABLE ArticleApply ADD FOREIGN KEY (CriminalNumber)
REFERENCES CriminalCase (CriminalNumber) ON DELETE CASCADE;

CREATE TABLE IncidentInvolvment(
	PersonNumber INTEGER,
	RegistrationNumber INTEGER,
	StatusNumber INTEGER
);

ALTER TABLE IncidentInvolvment ADD FOREIGN KEY (PersonNumber)
REFERENCES Person (PersonNumber) ON DELETE CASCADE;
ALTER TABLE IncidentInvolvment ADD FOREIGN KEY (RegistrationNumber)
REFERENCES Incident(RegistrationNumber) ON DELETE CASCADE;
ALTER TABLE IncidentInvolvment ADD FOREIGN KEY (StatusNumber)
REFERENCES Status (StatusNumber) ON DELETE CASCADE;


insert into Article values(139, '��������', '���������� �������������� ������� ����� ������� �������� (��������) - 
������������ �������� ������� �� ���� �� ����� �� ���������� ���.');

insert into Article values(140, '�������� ������� �������������� �������', '�������� ������� ������ ������� �� ����� �����
��� ��������������� ����� ���, ����������� � �������� ����������������� ��������, ��������� ������, -
������������ ������������ ������� �� ���� �� ���� ��� ��� �������� ������� �� ��� �� ����.');

insert into Article values(141, '��������, ����������� � ��������� �������', '��������, ����������� � ��������� �������� 
���������� �������� ��������� ��������, ���������� ��������, ���������������, ������ ������������
��� ����� ���������������� ��� ������� ����������� ���������� ������������ ���� ���������� �����������������
���������, ��������� � ����� � ��������������� �������������� ��� ���������� ���������� ������������, - 
������������ ������������ ������� �� ���� �� ���� ��� ��� �������� ������� �� ���� �� ������� ���.');

insert into Article values(142, '�������� ��� ���������� ���, ����������� ��� ���������� ����, ������������ ������������',
'��������, ����������� ��� ���������� ���, ����������� ��� ���������� ����, ������������ ������������, -
������������ ������������ ������� �� ���� �� ���� ��� ��� �������� ������� �� ��� �� ����.');

insert into Article values(143, '�������� ��� ���������� �������� ����������� �������',
'��������, ����������� ��� ���������� �������� ����������� �������, -
������������ ��������������� �������� �� ���� �� ���� ���, ��� ������������ ������� �� ��� �� ����,
��� �������� ������� �� ���� �� ���� ���.');

insert into Article values(144, '���������� ������ �� ��������������',
'���������� ������ �� �������������� - ������������ ��������������� ��������
�� ���� �� ���� ���, ��� ������������ ������� �� ���� �� ���� ���, ��� �������� ������� �� ��� �� ����.');

insert into Article values(166, '�������������',
'������� �������� ������� ���� ����������� � ����������� ������� ��� � ������� ��� ���������� � ������� ���
�� ������� ���� � �������������� ������������ ��������� ����������� (�������������) -
������������ ������������ ������� �� ���� �� ������� ��� ��� �������� ������� �� ���� �� ���� �� ���� ���.');

insert into Article values(181, '�������� ������',
'�����-������� �������� ��� ���������� ���� ������ � ��������� ���, � ����� ����������� � ����� ������������
��������, ���������, ��������, �������������� ��� ��������� �������� (�������� ������) -
������������ �������� ������� �� ���� �� ���� �� ���� ��� � ������������ ���������.');

insert into Article values(182, '��������� ��������',
'������, ��������, ����� ������ ��� ��������������� ��������, ��� ����������� � �������� ��� � 
������� ��� ����������, ��� ����� ������� ����������� �������������� ���������� ����� ��� ���������� 
��������� ������������, ���������������� ������� 291 ���������� ������� (��������� ��������), -
������������ �������� ������� �� ���� �� ���� �� ���� ��� � ������������ ��������� ��� ��� �����������.');

insert into Article values(183, '���������� ������� �������',
'����������� ������ ������� �������� ����� ���������� ��� � �����-���� ���������,
���������� ��� ����� ��������������� ��������� ��� ���������� ��������� ������������ ��� �������
����� ������� ������������ (���������� ������� �������) -
������������ �������� ������� �� ���� �� ���� �� ���� ���.');

insert into Article values(205, '�����',
'������ ��������� ��������� (�����) -
������������ ������������� ��������, ��� �������, ��� ��������������� �������� �� ���� �� ���� ���,
��� ������� �� ���� �� ����� �������, ��� ������������ ������� �� ���� �� ���� ���, ��� �������� �������
�� ��� �� ����.');							

insert into Article values(206, '������',
'�������� ��������� ��������� (������) -
������������ ������������� ��������, ��� �������, ��� ��������������� �������� �� ���� �� ���� ���,
��� ������� �� ���� �� ����� �������, ��� ������������ ������� �� ���� �� ������� ���, ��� ��������
������� �� ��� �� ����.');									


insert into Status(StatusName) values('�������������');
insert into Status(StatusName) values('����������');
insert into Status(StatusName) values('��������');
insert into Status(StatusName) values('���������');
insert into Status(StatusName) values('�����������');



insert into Person(FirstName, LastName, PassportNumber, Address, BurnDate, CourtRate) values(
	'������', '�������', 1529299, '�. ����� ��. ����� ������ 28', '11.03.1992', 1);

insert into Person(FirstName, LastName, PassportNumber, Address, BurnDate, CourtRate) values(
	'��������', '����', 1322291, '�. ����� ��. ����� ������ 28', '16.02.1982', 0);

insert into Person(FirstName, LastName, PassportNumber, Address, BurnDate, CourtRate) values(
	'������', '�������', 3559289, '�. ����� ��. ����� ������ 28', '12.06.1991', 3);

insert into Person(FirstName, LastName, PassportNumber, Address, BurnDate, CourtRate) values(
	'�������', '�����', 8569223, '�. ����� ��. ����� ������ 28', '29.08.1958', 1);

insert into Person(FirstName, LastName, PassportNumber, Address, BurnDate, CourtRate) values(
	'���������', '�����', 1569627, '�. ����� ��. ����� ������ 28', '17.03.1992', 5);

insert into Person(FirstName, LastName, PassportNumber, Address, BurnDate, CourtRate) values(
	'������', '����', 5569823, '�. ����� ��. ����� ������ 28', '30.06.1966', 2);




insert into Incident(IncidentDate, Description, Decision) values('03.12.2009', '����� ��������', '��������� ��������� ����');
insert into Incident(IncidentDate, Description, Decision) values('06.02.2010', '�������� �������� ������� � ������', '�� ���������� ��������� ����');
insert into Incident(IncidentDate, Description, Decision) values('15.02.2010', '�������� �������� ����� ����� �����������', '��������� ��������� ����');
insert into Incident(IncidentDate, Description, Decision) values('27.06.2010', '� ���������� ������ � ������ 20 �� ��������', '��������� ��������� ����');
insert into Incident(IncidentDate, Description, Decision) values('05.12.2010', '� �������� ������ ������', '�� ���������� ��������� ����');
insert into Incident(IncidentDate, Description, Decision) values('01.01.2011', '��������� ������� �� ����� ��� � ��������� � ������� ����������', '��������� ��������� ����');
insert into Incident(IncidentDate, Description, Decision) values('19.04.2011', '� ���������� ������ ������, �� � ���� ������� ������� ����������', '��������� ��������� ����');




insert into CriminalCase(CriminalDate, CriminalNote, RegistrationNumber) values(
		'05.12.2009', '��������� ���� ���������� ������������ ��������.', 1);

insert into CriminalCase(CriminalDate, CriminalNote, RegistrationNumber) values(
		'18.02.2010', '��������� ���� ���������� ������������ �������.', 3);

insert into CriminalCase(CriminalDate, CriminalNote, RegistrationNumber) values(
		'01.07.2010', '��������� ���� ���������� ������������ ��������.', 4);

insert into CriminalCase(CriminalDate, CriminalNote, RegistrationNumber) values(
		'15.01.2011', '��������� ���� ���������� ������������ ��������.', 6);

insert into CriminalCase(CriminalDate, CriminalNote, RegistrationNumber) values(
		'20.04.2011', '��������� ���� ���������� ������������ �������.', 7);





insert into ArticleApply(ArticleNumber, CriminalNumber) values(139, 1);
insert into ArticleApply(ArticleNumber, CriminalNumber) values(182, 2);
insert into ArticleApply(ArticleNumber, CriminalNumber) values(205, 3);
insert into ArticleApply(ArticleNumber, CriminalNumber) values(166, 4);
insert into ArticleApply(ArticleNumber, CriminalNumber) values(143, 5);
insert into ArticleApply(ArticleNumber, CriminalNumber) values(144, 5);
insert into ArticleApply(ArticleNumber, CriminalNumber) values(206, 3);




insert into IncidentInvolvment(PersonNumber, RegistrationNumber, StatusNumber) values(1, 1, 1);
insert into IncidentInvolvment(PersonNumber, RegistrationNumber, StatusNumber) values(1, 1, 4);
insert into IncidentInvolvment(PersonNumber, RegistrationNumber, StatusNumber) values(4, 2, 5);
insert into IncidentInvolvment(PersonNumber, RegistrationNumber, StatusNumber) values(3, 3, 5);
insert into IncidentInvolvment(PersonNumber, RegistrationNumber, StatusNumber) values(5, 3, 3);
insert into IncidentInvolvment(PersonNumber, RegistrationNumber, StatusNumber) values(4, 4, 1);
insert into IncidentInvolvment(PersonNumber, RegistrationNumber, StatusNumber) values(6, 4, 5);
insert into IncidentInvolvment(PersonNumber, RegistrationNumber, StatusNumber) values(2, 5, 3);
insert into IncidentInvolvment(PersonNumber, RegistrationNumber, StatusNumber) values(1, 6, 5);
insert into IncidentInvolvment(PersonNumber, RegistrationNumber, StatusNumber) values(3, 7, 1);



CREATE TRIGGER ChangeIncidentDecision
  AFTER INSERT ON alex.criminalcase
  REFERENCING NEW AS NEW
  FOR EACH ROW MODE DB2SQL
  UPDATE alex.incident SET alex.incident.decision = '��������� ��������� ����'
    WHERE alex.incident.registrationnumber = NEW.registrationnumber;
	
CREATE TRIGGER DeleteIncidentDecision
  AFTER DELETE ON alex.criminalcase
  REFERENCING OLD AS OLD
  FOR EACH ROW MODE DB2SQL
  UPDATE alex.incident SET alex.incident.decision = '�� ���������� ��������� ����'
    WHERE alex.incident.registrationnumber = OLD.registrationnumber;


























		