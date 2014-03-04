if (TransMenu.isSupported()) {
	TransMenu.updateImgPath('#');
	var ms = new TransMenuSet(TransMenu.direction.down, 2, 15, TransMenu.reference.bottomLeft);
	var id=-1;
	var url='eaie/index.jsp';
	TransMenu.subpad_x = 1;
	TransMenu.subpad_y = 0;

	var tmenu62 = ms.addMenu(document.getElementById("menu62"));
	tmenu62.addItem("学院简介", "/ShowContent.jsp?smallclassid=91&type=1",0, 0);
	tmenu62.addItem("学院领导", "/ShowLeader.jsp?type=1", 0, 0);
	tmenu62.addItem("机构设置", "/InstitutionList.jsp?type=1", 0, 0);
	
	var tmenu59 = ms.addMenu(document.getElementById("menu59"));
	tmenu59.addItem("教学公告栏", "/ShowClass.jsp?id=21&type=2", 0, 0);
	tmenu59.addItem("办公流程", "/ShowClass.jsp?id=25&type=2", 0, 0);//
	tmenu59.addItem("管理规定", "/ShowClass.jsp?id=23&type=2", 0, 0);
	tmenu59.addItem("资料下载", "/downlist.jsp?bigclass=2&type=2", 0, 0);

	tmenu59.addItem("学院学科建设", "/ShowContent.jsp?smallclassid=26&type=2", 0, 0);
	tmenu59.addItem("主讲介绍", "/UnderConstruction.jsp?type=2", 0, 0);//
	tmenu59.addItem("课程简介", "/course/CourseAll.jsp?type=2", 0, 0);//
	
	tmenu59.addItem("质量工程", "", 0, 0);//
	tmenu59.addItem("&nbsp;&nbsp;&nbsp;-- 大学生创新实验 --", "/quality/ExpList.jsp?type=2", 0, 0);//
	tmenu59.addItem("学生留言", "/message/MsgShow.jsp?id=2&type=2", 0, 0);
	tmenu59.addItem("本科生论文选题系统", "http://eaie.bjtu.edu.cn:8081/BS/", 1, 0);
	
	
	//tmenu59.addItem("学生工作公告栏", "/eaie/ShowClass.jsp?id=22", 0, 0);
	//tmenu59.addItem("本科生就业", "/eaie/listwithleft.jsp", 0, 0);
	//tmenu59.addItem("热点解答", "/eaie/ShowContent.jsp", 0, 0);
	//tmenu59.addItem("本科生论文选题系统", "", 0, 0);

	var tmenu61 = ms.addMenu(document.getElementById("menu61"));
	tmenu61.addItem("研究生公告栏", "/ShowClass.jsp?id=31&type=3", 0, 0);
	tmenu61.addItem("研究生招生", "/ShowClass.jsp?id=32&type=3", 0, 0);
	tmenu61.addItem("推免生招生系统", "tmszsxtstudentnew/tmlogin.jsp", 0, 0);
	tmenu61.addItem("研究生招生系统", "http://eaie.njtu.edu.cn/yanjiu/enrolment/index.asp", 1, 0);
	tmenu61.addItem("研究生培养", "/ShowClass.jsp?id=33&type=3", 0, 0);
	//tmenu61.addItem("研究生就业", "/eaie/listwithleft.jsp?type=3", 0, 0);
	tmenu61.addItem("研究生课程评价系统", "http://eaie.bjtu.edu.cn/yanjiu/course/index.asp", 1, 0);
	tmenu61.addItem("研究生答辩论文提交", "http://eaie.njtu.edu.cn/lwtj/", 1, 0);	
	tmenu61.addItem("博士生答辩论文提交", "http://eaie.njtu.edu.cn/bslwtj/", 1, 0);
	tmenu61.addItem("研究生网上论文评审", "http://eaie.bjtu.edu.cn/yanjiu/lwps/index.asp", 1, 0);
	tmenu61.addItem("研究生三助系统", "http://eaie.bjtu.edu.cn/yanjiu/assistant/index.asp", 1, 0);
	tmenu61.addItem("工程硕士", "/ShowClass.jsp?id=37&type=3", 0, 0);
	tmenu61.addItem("常用资料", "/downlist.jsp?bigclass=3&type=3", 0, 0);
	tmenu61.addItem("站内留言", "/message/MsgShow.jsp?id=3&type=3", 0, 0); 
	tmenu61.addItem("热点解答", "/ShowContent.jsp?smallclassid=38&type=3", 0, 0); 
	
	
	var tmenu71 = ms.addMenu(document.getElementById("menu71"));
	tmenu71.addItem("科研公告", "/ShowClass.jsp?id=41&type=4", 0, 0);
  	tmenu71.addItem("学术活动", "/LectureList.jsp?type=4", 0, 0);
	tmenu71.addItem("常用资料", "/downlist.jsp?bigclass=4&type=4", 0, 0);	
	tmenu71.addItem("论文检索", "http://www.njtu.edu.cn/jg/jgkj/paper/index.html", 0, 0);		
	var tmenu93 = ms.addMenu(document.getElementById("menu93"));
	tmenu93.addItem("院士风采", "/teacher/teachers.jsp?gradeid=1&type=5", 0, 0);
	tmenu93.addItem("博导风采", "/teacher/teachers.jsp?gradeid=2&type=5", 0, 0);
    tmenu93.addItem("硕导风采", "/teacher/teachers.jsp?gradeid=3&type=5", 0, 0); 
	tmenu93.addItem("其他教师", "/teacher/teachers.jsp?gradeid=4&type=5", 0, 0);
	tmenu93.addItem("-- 教师登录 --", "/teacher/login.jsp", 1, 0);
	
	var tmenu95 = ms.addMenu(document.getElementById("menu95"));
	tmenu95.addItem("<b><font color=#800080>学科建设</font></b>", "", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;国家级重点学科", "/ShowContent.jsp?id=58&type=6", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;部级重点学科", "/ShowContent.jsp?id=59&type=6", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;博士授权点", "/ShowContent.jsp?id=60&type=6", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;硕士授权点", "/ShowContent.jsp?id=61&type=6", 0, 0);
	  
	tmenu95.addItem("<b><font color=#800080>实验室建设</font></b>", "", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;下一代互联网研究中心", "http://iplab.bjtu.edu.cn/", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;电磁兼容实验室", "http://eaie.njtu.edu.cn/emcsite/index.asp", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;国家电工电子教学基地", "http://202.112.146.13/jxjd/index.htm", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;国家电工电子实验教学示范中心", "http://202.112.146.13/sfzx/index.htm", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;全光网络与现代通信网实验室", "/ShowContent.jsp?id=64&type=6", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;运输自动化与通信实验室", "/ShowContent.jsp?id=65&type=6", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;光波技术工程研究中心", "/ShowContent.jsp?id=66&type=6", 0, 0);
	  tmenu95.addItem("&nbsp;&nbsp;通信与信息系统实验室", "http://202.112.146.68:8082/web/", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;城市轨道交通自动化与控制实验室", "http://eaie.bjtu.edu.cn/zdhsys/index.asp", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;电子工程系实验室", "/ShowContent.jsp?id=389&type=6", 0, 0);
	  
	tmenu95.addItem("<b><font color=#800080>-临时链接-</font></b>", "", 0, 0);
      tmenu95.addItem("&nbsp;&nbsp;通信系统原理教学网站", "http://col.njtu.edu.cn/course/xnjp/dzxy/txxtyl/index.htm", 1, 0);
	  tmenu95.addItem("&nbsp;&nbsp;模拟电子技术教学网站", "http://col.njtu.edu.cn/jingpinke/08jpsb/mndzjs/index.html", 1, 0);
	
	var tmenu98 = ms.addMenu(document.getElementById("menu98"));
	tmenu98.addItem("<b><font color=#800080>学生活动</font></b>", "/ShowClass.jsp?id=81&type=7", 0, 0);
	  tmenu98.addItem("&nbsp;&nbsp;活动报道", "/ShowClass.jsp?id=81&type=7", 0, 0);
	  tmenu98.addItem("&nbsp;&nbsp;活动申请", "/student/Apply.jsp?type=7", 0, 0);
	  tmenu98.addItem("&nbsp;&nbsp;学生作品", "/ShowClass.jsp?id=82&type=7", 0, 0);
	  tmenu98.addItem("&nbsp;&nbsp;奥运专栏", "/ShowClass.jsp?id=83&type=7", 0, 0);
	  tmenu98.addItem("&nbsp;&nbsp;调查专区", "/vote/VoteList.jsp?type=7", 0, 0);
	tmenu98.addItem("<b><font color=#800080>学生组织</font></b>", "http://eaie.bjtu.edu.cn/eaiesu/", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;学生会", "http://eaie.bjtu.edu.cn/eaiesu/", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;学生科协", "http://eaie.bjtu.edu.cn/kexie/index.htm", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;三个代表重要思想研究协会", "http://eaie.bjtu.edu.cn/study/items/index.html", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;青年志愿者服务团", "http://eaie.bjtu.edu.cn/volunteer/index.asp", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;班级风采", "http://eaie.bjtu.edu.cn/zuzhi/index.asp", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;IEEE北京交大学生支会", "http://eaie.njtu.edu.cn/ieee/", 1, 0);
	 
	tmenu98.addItem("<b><font color=#800080>生活服务</font></b>", "http://eaie.bjtu.edu.cn/eaiesu/st/index.asp", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;同一趟车", "http://eaie.bjtu.edu.cn/eaiesu/st/index.asp", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;书籍交流", "http://eaie.bjtu.edu.cn/eaiesu/jiaocai/index.asp", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;课件下载", "http://eaie.bjtu.edu.cn/eaiesu/kejian/index.asp", 1, 0);
	  tmenu98.addItem("&nbsp;&nbsp;常用软件", "http://eaie.bjtu.edu.cn/eaiesu/software/", 1, 0);

var tmenu99 = ms.addMenu(document.getElementById("menu99"));
tmenu99.addItem("&nbsp;&nbsp;科学发展观", "kf/index.jsp", 0, 0);
	TransMenu.renderAll();
    }
    init1=function(){TransMenu.initialize();}
    if (window.attachEvent) {
	window.attachEvent("onload", init1);
    }else{
	TransMenu.initialize();			
    }
