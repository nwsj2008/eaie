if (TransMenu.isSupported()) {
	TransMenu.updateImgPath('#');
	var ms = new TransMenuSet(TransMenu.direction.down, 2, 15, TransMenu.reference.bottomLeft);
	var id=-1;
	var url='eaie/index.jsp';
	TransMenu.subpad_x = 1;
	TransMenu.subpad_y = 0;

	var tmenu62 = ms.addMenu(document.getElementById("menu62"));
	tmenu62.addItem("ѧԺ���", "/ShowContent.jsp?smallclassid=91&type=1",0, 0);
	tmenu62.addItem("ѧԺ�쵼", "/ShowLeader.jsp?type=1", 0, 0);
	tmenu62.addItem("��������", "/InstitutionList.jsp?type=1", 0, 0);
	
	var tmenu59 = ms.addMenu(document.getElementById("menu59"));
	tmenu59.addItem("��ѧ������", "/ShowClass.jsp?id=21&type=2", 0, 0);
	tmenu59.addItem("�칫����", "/ShowClass.jsp?id=25&type=2", 0, 0);//
	tmenu59.addItem("����涨", "/ShowClass.jsp?id=23&type=2", 0, 0);
	tmenu59.addItem("��������", "/downlist.jsp?bigclass=2&type=2", 0, 0);

	tmenu59.addItem("ѧԺѧ�ƽ���", "/ShowContent.jsp?smallclassid=26&type=2", 0, 0);
	tmenu59.addItem("��������", "/UnderConstruction.jsp?type=2", 0, 0);//
	tmenu59.addItem("�γ̼��", "/course/CourseAll.jsp?type=2", 0, 0);//
	
	tmenu59.addItem("��������", "", 0, 0);//
	tmenu59.addItem("&nbsp;&nbsp;&nbsp;-- ��ѧ������ʵ�� --", "/quality/ExpList.jsp?type=2", 0, 0);//
	tmenu59.addItem("ѧ������", "/message/MsgShow.jsp?id=2&type=2", 0, 0);
	tmenu59.addItem("����������ѡ��ϵͳ", "http://eaie.bjtu.edu.cn:8081/BS/", 1, 0);
	
	
	//tmenu59.addItem("ѧ������������", "/eaie/ShowClass.jsp?id=22", 0, 0);
	//tmenu59.addItem("��������ҵ", "/eaie/listwithleft.jsp", 0, 0);
	//tmenu59.addItem("�ȵ���", "/eaie/ShowContent.jsp", 0, 0);
	//tmenu59.addItem("����������ѡ��ϵͳ", "", 0, 0);

	var tmenu61 = ms.addMenu(document.getElementById("menu61"));
	tmenu61.addItem("�о���������", "/ShowClass.jsp?id=31&type=3", 0, 0);
	tmenu61.addItem("�о�������", "/ShowClass.jsp?id=32&type=3", 0, 0);
	tmenu61.addItem("����������ϵͳ", "tmszsxtstudentnew/tmlogin.jsp", 0, 0);
	tmenu61.addItem("�о�������ϵͳ", "http://eaie.njtu.edu.cn/yanjiu/enrolment/index.asp", 1, 0);
	tmenu61.addItem("�о�������", "/ShowClass.jsp?id=33&type=3", 0, 0);
	//tmenu61.addItem("�о�����ҵ", "/eaie/listwithleft.jsp?type=3", 0, 0);
	tmenu61.addItem("�о����γ�����ϵͳ", "http://eaie.bjtu.edu.cn/yanjiu/course/index.asp", 1, 0);
	tmenu61.addItem("�о�����������ύ", "http://eaie.njtu.edu.cn/lwtj/", 1, 0);	
	tmenu61.addItem("��ʿ����������ύ", "http://eaie.njtu.edu.cn/bslwtj/", 1, 0);
	tmenu61.addItem("�о���������������", "http://eaie.bjtu.edu.cn/yanjiu/lwps/index.asp", 1, 0);
	tmenu61.addItem("�о�������ϵͳ", "http://eaie.bjtu.edu.cn/yanjiu/assistant/index.asp", 1, 0);
	tmenu61.addItem("����˶ʿ", "/ShowClass.jsp?id=37&type=3", 0, 0);
	tmenu61.addItem("��������", "/downlist.jsp?bigclass=3&type=3", 0, 0);
	tmenu61.addItem("վ������", "/message/MsgShow.jsp?id=3&type=3", 0, 0); 
	tmenu61.addItem("�ȵ���", "/ShowContent.jsp?smallclassid=38&type=3", 0, 0); 
	
	
	var tmenu71 = ms.addMenu(document.getElementById("menu71"));
	tmenu71.addItem("���й���", "/ShowClass.jsp?id=41&type=4", 0, 0);
  	tmenu71.addItem("ѧ���", "/LectureList.jsp?type=4", 0, 0);
	tmenu71.addItem("��������", "/downlist.jsp?bigclass=4&type=4", 0, 0);	
	tmenu71.addItem("���ļ���", "http://www.njtu.edu.cn/jg/jgkj/paper/index.html", 0, 0);		
	var tmenu93 = ms.addMenu(document.getElementById("menu93"));
	tmenu93.addItem("Ժʿ���", "/teacher/teachers.jsp?gradeid=1&type=5", 0, 0);
	tmenu93.addItem("�������", "/teacher/teachers.jsp?gradeid=2&type=5", 0, 0);
    tmenu93.addItem("˶�����", "/teacher/teachers.jsp?gradeid=3&type=5", 0, 0); 
	tmenu93.addItem("������ʦ", "/teacher/teachers.jsp?gradeid=4&type=5", 0, 0);
	tmenu93.addItem("-- ��ʦ��¼ --", "/teacher/login.jsp", 1, 0);
	
	var tmenu95 = ms.addMenu(document.getElementById("menu95"));
	tmenu95.addItem("<b><font color=#800080>ѧ�ƽ���</font></b>", "", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;���Ҽ��ص�ѧ��", "/ShowContent.jsp?id=58&type=6", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;�����ص�ѧ��", "/ShowContent.jsp?id=59&type=6", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;��ʿ��Ȩ��", "/ShowContent.jsp?id=60&type=6", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;˶ʿ��Ȩ��", "/ShowContent.jsp?id=61&type=6", 0, 0);
	  
	tmenu95.addItem("<b><font color=#800080>ʵ���ҽ���</font></b>", "", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;��һ���������о�����", "http://iplab.bjtu.edu.cn/", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;��ż���ʵ����", "http://eaie.njtu.edu.cn/emcsite/index.asp", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;���ҵ繤���ӽ�ѧ����", "http://202.112.146.13/jxjd/index.htm", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;���ҵ繤����ʵ���ѧʾ������", "http://202.112.146.13/sfzx/index.htm", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;ȫ���������ִ�ͨ����ʵ����", "/ShowContent.jsp?id=64&type=6", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;�����Զ�����ͨ��ʵ����", "/ShowContent.jsp?id=65&type=6", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;�Ⲩ���������о�����", "/ShowContent.jsp?id=66&type=6", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;ͨ������Ϣϵͳʵ����", "http://202.112.146.68:8082/web/", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;���й����ͨ�Զ��������ʵ����", "http://eaie.bjtu.edu.cn/zdhsys/index.asp", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;���ӹ���ϵʵ����", "/ShowContent.jsp?id=389&type=6", 0, 0);
	  
	tmenu95.addItem("<b><font color=#800080>-��ʱ����-</font></b>", "", 0, 0);
      tmenu95.addItem("&nbsp;&nbsp;ͨ��ϵͳԭ���ѧ��վ", "http://col.njtu.edu.cn/course/xnjp/dzxy/txxtyl/index.htm", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;ģ����Ӽ�����ѧ��վ", "http://col.njtu.edu.cn/jingpinke/08jpsb/mndzjs/index.html", 1, 0);
	
	var tmenu98 = ms.addMenu(document.getElementById("menu98"));
	tmenu98.addItem("<b><font color=#800080>ѧ���</font></b>", "/ShowClass.jsp?id=81&type=7", 0, 0);
	  tmenu98.addItem("&nbsp;&nbsp;�����", "/ShowClass.jsp?id=81&type=7", 0, 0);
	  tmenu98.addItem("&nbsp;&nbsp;�����", "/student/Apply.jsp?type=7", 0, 0);
	  tmenu98.addItem("&nbsp;&nbsp;ѧ����Ʒ", "/ShowClass.jsp?id=82&type=7", 0, 0);
	  tmenu98.addItem("&nbsp;&nbsp;����ר��", "/ShowClass.jsp?id=83&type=7", 0, 0);
	  tmenu98.addItem("&nbsp;&nbsp;����ר��", "/vote/VoteList.jsp?type=7", 0, 0);
	tmenu98.addItem("<b><font color=#800080>ѧ����֯</font></b>", "http://eaie.bjtu.edu.cn/eaiesu/", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;ѧ����", "http://eaie.bjtu.edu.cn/eaiesu/", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;ѧ����Э", "http://eaie.bjtu.edu.cn/kexie/index.htm", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;����������Ҫ˼���о�Э��", "http://eaie.bjtu.edu.cn/study/items/index.html", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;����־Ը�߷�����", "http://eaie.bjtu.edu.cn/volunteer/index.asp", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;�༶���", "http://eaie.bjtu.edu.cn/zuzhi/index.asp", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;IEEE��������ѧ��֧��", "http://eaie.njtu.edu.cn/ieee/", 1, 0);
	 
	tmenu98.addItem("<b><font color=#800080>�������</font></b>", "http://eaie.bjtu.edu.cn/eaiesu/st/index.asp", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;ͬһ�˳�", "http://eaie.bjtu.edu.cn/eaiesu/st/index.asp", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;�鼮����", "http://eaie.bjtu.edu.cn/eaiesu/jiaocai/index.asp", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;�μ�����", "http://eaie.bjtu.edu.cn/eaiesu/kejian/index.asp", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;�������", "http://eaie.bjtu.edu.cn/eaiesu/software/", 1, 0);

var tmenu99 = ms.addMenu(document.getElementById("menu99"));
tmenu99.addItem("&nbsp;&nbsp;��ѧ��չ��", "kf/index.jsp", 0, 0);
	TransMenu.renderAll();
    }
    init1=function(){TransMenu.initialize();}
    if (window.attachEvent) {
	window.attachEvent("onload", init1);
    }else{
	TransMenu.initialize();			
    }
