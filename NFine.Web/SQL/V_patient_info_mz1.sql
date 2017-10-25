
create or replace view v_patient_info_mz as
(
select c.prtno,
       t.card_no CustId, ----����Ψһ����
       t.name CustName,
       (select d.Name
          from lchis.com_dictionary d
         where d.type = 'PROFESSION'
           and d.code = t.prof_code
           and d.valid_state = '1') PriorID,
       t.birthday,
       t.sex_code,
       t.idenno,
       t.idcardtype,
       t.home_tel,
       t.linkman_tel,
       t.oper_date
  from lchis.com_patientinfo t, lchis.fin_opb_accountcard c
 where t.card_no = c.card_no(+)
   and c.state = '1'
--------------------------------------------------------------------------------------------------
insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000001015', '00000b7456', '������', 'רҵ������Ա', to_date('18-11-1980', 'dd-mm-yyyy'), 'F', '610125198011181605', null, '15829026369', null, to_date('02-08-2017 10:19:15', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000003665', '00000b0801', '����»', '����', to_date('12-08-1963', 'dd-mm-yyyy'), 'M', '610113196308120411', '01', '85224166', '13193309318', to_date('25-08-2017 08:10:25', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000003005', '00000b1493', '��ѩ', null, to_date('28-12-1964', 'dd-mm-yyyy'), 'F', '610113196412280466', '01', '18991232241', '13002910338', to_date('07-07-2014 08:56:15', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002379', '00000b1631', 'Ľ��', null, to_date('02-10-1979', 'dd-mm-yyyy'), 'F', '610113197910020426', '01', '13109590882', '13109590883', to_date('09-08-2012 15:48:15', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002073', '00000b2420', '����', null, to_date('09-07-1971', 'dd-mm-yyyy'), 'M', '610121197107091233', '01', '18991232461', '13709292901', to_date('09-08-2012 08:29:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000003466', '00000b3243', '������', null, to_date('23-01-1964', 'dd-mm-yyyy'), 'M', '61010219640123043x', '01', '13700280031', '13572212705', to_date('08-09-2016 16:58:38', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000698096', '00000b1789', '���', null, to_date('25-07-1968 17:18:21', 'dd-mm-yyyy hh24:mi:ss'), 'M', '61011319680412047x', '01', '13991316260', '15091772553', to_date('09-12-2016 08:35:38', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000000377', '00000b1838', '��С��', null, to_date('01-01-1958', 'dd-mm-yyyy'), 'F', '610113196012110441', '01', null, null, to_date('01-08-2012 11:35:33', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000000932', '00000b1777', '��־��', null, to_date('05-06-1957', 'dd-mm-yyyy'), 'F', '610113195706050426', '01', '13193362211', '13096937976', to_date('20-03-2017 08:59:54', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000000814', '00000b1834', '���Ƽ', '����', to_date('21-09-1955', 'dd-mm-yyyy'), 'F', '610113195506030447', '01', null, null, to_date('15-03-2017 10:48:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000737966', '00000b1833', 'Ҧ����', '����', to_date('27-09-1957', 'dd-mm-yyyy'), 'F', '610113195709270424', '01', '13572895695', '13572895695', to_date('06-06-2017 17:09:22', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000003910', '00000b1048', '�Զ���', null, to_date('02-11-1968', 'dd-mm-yyyy'), 'M', '610113196811021939', '01', '13700223935', '13772009970', to_date('11-07-2017 14:58:27', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000003929', '00000b1054', '��  ��', null, to_date('16-04-1955', 'dd-mm-yyyy'), 'M', '610113195504160459', '01', '13991363775', '18710340112', to_date('09-04-2015 16:58:57', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000003931', '00000b1058', '������', '����', to_date('24-03-1957', 'dd-mm-yyyy'), 'M', '610113195703240435', '01', '88395421', null, to_date('16-11-2015 15:14:00', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000003933', '00000b1061', 'Ѧ�Ļ�', null, to_date('27-09-1967 08:21:02', 'dd-mm-yyyy hh24:mi:ss'), 'F', '610113196707220524', '01', '13991975843', '13619251159', to_date('13-08-2012 09:53:16', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000003935', '00000b1065', '����', null, to_date('13-06-1964', 'dd-mm-yyyy'), 'M', '610113196406130453', '01', '13700223928', '13809191187', to_date('29-02-2016 14:52:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000003936', '00000b1066', '֣  ΰ', null, to_date('05-11-1967', 'dd-mm-yyyy'), 'M', '61011319671105045x', '01', '18991230600', '18991230600', to_date('27-11-2014 17:30:21', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000003939', '00000b1931', '���', 'ְԱ', to_date('18-10-1970', 'dd-mm-yyyy'), 'M', '610102197010180919', '01', '13309297357', null, to_date('23-01-2017 16:09:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00001442005', '00000b2334', '��ǫ', null, to_date('26-01-1971', 'dd-mm-yyyy'), 'M', '610114197101260514', '01', '18991232571', '18991236769', to_date('21-09-2017 11:26:07', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000003915', '00000b2335', '������', null, to_date('26-12-1968', 'dd-mm-yyyy'), 'M', '220104196812261337', '01', '13991984262', '13991831377', to_date('28-04-2015 17:20:43', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000003941', '00000b2391', '����', '����', to_date('29-10-1962', 'dd-mm-yyyy'), 'M', '610113196210290519', '01', '68898956', '68898956', to_date('18-03-2017 10:57:56', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002915', '00000b9435', '�ֺ���', '����', to_date('10-04-1979', 'dd-mm-yyyy'), 'F', '610428197904100420', '01', '13384980565', '13384902896', to_date('29-07-2017 14:23:04', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002916', '00000b9436', '����', null, to_date('08-01-1978', 'dd-mm-yyyy'), 'F', '610113197801081625', '01', '13892828857', '13991917116', to_date('19-09-2017 09:53:46', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000796218', '00000b9439', '������', '����', to_date('17-02-1981', 'dd-mm-yyyy'), 'F', '610124198102170104', '01', '18992873798', '18991232917', to_date('24-02-2013 17:47:09', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002919', '00000b9440', '������', null, to_date('27-05-1983', 'dd-mm-yyyy'), 'F', '610121198305275564', '01', '15802977201', '13572486173', to_date('06-12-2016 14:19:45', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002846', '00000b0267', '�', null, to_date('11-12-1970', 'dd-mm-yyyy'), 'F', '610102197012110025', '01', null, '13379095737', to_date('10-08-2012 11:07:21', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002803', '00000b0275', '������', null, to_date('01-05-1962', 'dd-mm-yyyy'), 'F', '610113196205020426', '01', '13772008861', '13910920181', to_date('01-08-2016 10:39:15', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00001381866', '00000b0276', '����', null, to_date('10-05-1965', 'dd-mm-yyyy'), 'M', '610103196505101217', '01', '13991317770', null, to_date('22-06-2017 09:25:13', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002818', '00000b0282', 'ϰ��Ӣ', 'רҵ������Ա', to_date('29-01-1965', 'dd-mm-yyyy'), 'M', '610113196501290412', null, '18991232408', '18991232408', to_date('07-04-2015 12:11:51', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002815', '00000b0309', '����ʤ', null, to_date('08-12-1968', 'dd-mm-yyyy'), 'F', '610113196812080447', '01', '18991232963', '15991388253', to_date('29-06-2015 14:32:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002108', '00000b0439', '�ܺ���', 'רҵ������Ա', to_date('05-01-1965', 'dd-mm-yyyy'), 'F', '610113196501053521', '01', '18991232927', '13992846800', to_date('09-03-2017 09:22:17', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000000843', '00000b0449', '����', 'רҵ������Ա', to_date('22-07-1951', 'dd-mm-yyyy'), 'F', '610103195107223249', '01', '13991978583', '13991978583', to_date('22-09-2017 11:07:35', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002109', '00000b0450', '������', null, to_date('28-08-1963', 'dd-mm-yyyy'), 'F', '610113196308280466', '01', '18991232817', '13891839893', to_date('21-09-2017 11:27:24', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002111', '00000b2535', '������', 'ְԱ', to_date('20-06-1978', 'dd-mm-yyyy'), 'F', '61012119780620628x', '01', '13572882895', '13992808770', to_date('01-03-2016 10:22:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002112', '00000b2606', '������', null, to_date('17-09-1972', 'dd-mm-yyyy'), 'F', '610104197209178368', '01', '18991232816', '13991187936', to_date('10-01-2017 10:17:06', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002117', '00000b3115', '���', 'רҵ������Ա', to_date('08-03-1967', 'dd-mm-yyyy'), 'F', '610113196703080421', '01', '18991232819', '13809150832', to_date('10-01-2017 14:52:52', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002118', '00000b7038', '���޷�', null, to_date('21-05-1984', 'dd-mm-yyyy'), 'F', '610402198405210802', '01', '13659251236', '13572847580', to_date('28-04-2016 10:31:16', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002123', '00000b9206', '������', null, to_date('14-04-1979', 'dd-mm-yyyy'), 'F', '610113197904140421', '01', '15829688707', '13891925082', to_date('24-07-2017 11:25:33', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002053', '00000b0108', '�˳ж�', null, to_date('10-11-1941', 'dd-mm-yyyy'), 'M', '610113194111100450', '01', '13809196866', '13572968686', to_date('13-08-2016 11:54:37', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002054', '00000b0214', '��С��', 'רҵ������Ա', to_date('27-08-1967', 'dd-mm-yyyy'), 'F', '610113196708270486', '01', '13571875138', '13991369819', to_date('07-03-2014 16:43:15', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002055', '00000b0440', '����', null, to_date('06-09-1978', 'dd-mm-yyyy'), 'F', '612322197809063922', '01', '13630226531', '13891827161', to_date('25-09-2012 11:42:36', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000816344', '00000b2688', 'ʢ����', null, to_date('03-02-1972', 'dd-mm-yyyy'), 'M', '612101197202030435', '01', '13992823993', '15319754536', to_date('06-09-2017 08:52:13', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000461372', '00000b3010', '���ܿ�', null, to_date('19-04-1961', 'dd-mm-yyyy'), 'M', '610113196104190418', '01', '13991990855', '13991830381', to_date('23-12-2015 17:23:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002060', '00000b3074', '������', 'רҵ������Ա', to_date('03-03-1963', 'dd-mm-yyyy'), 'M', '610113196303030492', '01', '18991232185', '13289216823', to_date('10-07-2017 15:48:52', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000003106', '00000b3083', '��־��', 'ְԱ', to_date('20-04-1967', 'dd-mm-yyyy'), 'F', '61010319670420362x', '01', '13072981062', '13772185965', to_date('25-08-2017 11:40:43', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002063', '00000b3333', '����', null, to_date('17-06-1973', 'dd-mm-yyyy'), 'M', '610113197306170452', '01', '13909180830', '13809152398', to_date('09-06-2017 10:31:31', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000001930', '00000b3126', '������', null, to_date('20-12-1962', 'dd-mm-yyyy'), 'F', '610103196212203244', '01', '15353689949', '13572061911', to_date('19-09-2017 09:12:16', 'dd-mm-yyyy hh24:mi:ss'));

insert into V_PATIENT_INFO_MZ (PRTNO, CUSTID, CUSTNAME, PRIORID, BIRTHDAY, SEX_CODE, IDENNO, IDCARDTYPE, HOME_TEL, LINKMAN_TEL, OPER_DATE)
values ('00000002812', '00000b0520', '������', null, to_date('01-03-1973', 'dd-mm-yyyy'), 'M', '612130197303010013', '01', '13720729572', '13152190291', to_date('10-08-2012 10:56:03', 'dd-mm-yyyy hh24:mi:ss'));
