package org.apache.jsp.Ec;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class dagang_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    JspFactory _jspxFactory = null;
    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      _jspxFactory = JspFactory.getDefaultFactory();
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <title> 大纲简介</title>\r\n");
      out.write("    <meta http-equiv=\"Content-Language\" content=\"English\" />\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"Ec/style1.css\" media=\"screen\" />\r\n");
      out.write("<LINK REL=StyleSheet HREF=\"bsstyle.css\" TYPE=\"text/css\" MEDIA=screen>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<center>\r\n");
      out.write("<div id=\"wrap\">\r\n");
      out.write("\r\n");
      out.write("<div id=\"header\">\r\n");
      out.write("<h1>精品课程</h1>\r\n");
      out.write("<h2>北京交通大学电子信息工程学院</h2>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"right\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"articles\">\r\n");
      out.write("<pre>\r\n");
      out.write("     《光纤通信》课程教学大纲\r\n");
      out.write("Optical Fiber Communication \r\n");
      out.write("\r\n");
      out.write("课程编号：10L307Q\r\n");
      out.write("一、\t教学任务和目标\r\n");
      out.write("本课程是信息与通信、自动化和电子科学技术专业本科生的专业课。\r\n");
      out.write("其任务是使学生建立光纤通信的基本概念和学习方法，同时，注重\r\n");
      out.write("思路、方法与发展，力求体现物理概念、数学概念与工程概念并重，\r\n");
      out.write("按照讲、练、做三结合的技术基础课教学规律，为学生奠定坚实、\r\n");
      out.write("牢固的基础。通过本课程学习，学生可以掌握光纤通信原理以及系\r\n");
      out.write("统的实际应用。在此基础上，通过综合性工程问题的分析与设计，\r\n");
      out.write("提高学生的综合素质和创新能力，以适应科技发展对人才培养的需\r\n");
      out.write("求。学生在完成本课程后,应达到下列基本要求: \r\n");
      out.write("1、\t掌握光纤传输的基本理论；\r\n");
      out.write("2、\t掌握半导体光源及其调制工作原理；\r\n");
      out.write("3、\t掌握半导体光电检测器及其接收电路工作原理；\r\n");
      out.write("4、\t掌握数字光纤通信系统基本原理；\r\n");
      out.write("5、\t掌握模拟光纤通信系统基本原理；\r\n");
      out.write("6、\t掌握光纤通信测量技术；\r\n");
      out.write("7、\t掌握光放大器基本原理；\r\n");
      out.write("8、\t掌握光纤通信中的高新技术。\r\n");
      out.write("二、教学内容和学时分配\r\n");
      out.write("1、\t介绍光纤通信的基本概念，光纤通信发展概况等（2学时）\r\n");
      out.write("选作题：\r\n");
      out.write("（1）实现光纤通信的关键器件与技术是什么？\r\n");
      out.write("（2）数字光纤通信系统由哪几部分组成？简述各部分的作用。\r\n");
      out.write("（3）模拟光纤通信系统由哪几部分组成？简述各部分的作用\r\n");
      out.write("2、\t介绍光纤光缆的优点，阐述光纤的基本传输理论等（4学时）\r\n");
      out.write("选作题：\r\n");
      out.write("（1）阶跃折射率光纤中nl=1.52，n2＝1.49。光纤浸在水\r\n");
      out.write("中(n0=1.33)，求光从水中入射到光纤输入端面的最大接收角；\r\n");
      out.write("光纤放置在空气中，求数值孔径。\r\n");
      out.write("（2）\t一阶跃折射率光纤，折射率nl＝1.5，相对折射率差Δ\r\n");
      out.write("=1％，求光纤的数值孔径。\r\n");
      out.write("（3）光纤通信为什么用以下三个工作波长:0.85μm，1.31\r\n");
      out.write("μm，1.55μm?\r\n");
      out.write("（4）光纤的损耗机理及危害是什么?。\r\n");
      out.write("（5）光纤的色散机理及危害是什么?\r\n");
      out.write("3、\t介绍激光原理的基础知识，以及半导体光源和半导体检测器，\r\n");
      out.write("无源光器件等（6学时）\r\n");
      out.write("选作题：\r\n");
      out.write("（1）一半导体激光器，谐振腔长l=300μm，工作物质的损耗系\r\n");
      out.write("数=1mm-1 ,谐振腔两镜面的反射率R1=0.33,R2=1，求：阈值\r\n");
      out.write("时的增益系数gth；当R2由0.33增加到1时，激光器的阈值电流\r\n");
      out.write("如何变化？\r\n");
      out.write("（2）半导体激光器发光的基本条件是什么？\r\n");
      out.write("（3）能级跃迁有哪几种形式？\r\n");
      out.write("（4）提高光电探测器量子效率的主要方法？\r\n");
      out.write("（5）一个Ge光电二极管，入射光波长=1.3m，在这个波长下吸收\r\n");
      out.write("系数=104cm-1 ,入射表面的反射率R=0.05，P接触层的厚度为\r\n");
      out.write("1m，它所能得到的最大的响应度为多少？\r\n");
      out.write("（6）已知\r\n");
      out.write("(a) Si PIN光电二极管，量子效率=0.8，波长=0.85m；\r\n");
      out.write("(b) Ge光电二极管，量子效率=0.5，波长=1.6m。\r\n");
      out.write("计算它们的响应度。\r\n");
      out.write("4、\t介绍数字光发射机，线路编码，数字光接收机等（4学时）\r\n");
      out.write("选作题：\r\n");
      out.write("（1）现有码流信号为110110010001001011110110，采用\r\n");
      out.write("8B1P编码方式，请分别给出P为奇校验码和偶校验码时的码流信号。\r\n");
      out.write("（2）有一数字光纤通信系统，传输速率为34.368Mbit/s，采\r\n");
      out.write("用4B1H编码方式，其帧长为160bit，求：线路编码后的码速为多\r\n");
      out.write("少？帧频为多少？最大连“0”数为多少？\r\n");
      out.write("（3）若光电二极管的结电容为1pF,为使输入电路的上截止频率\r\n");
      out.write("为1GHz,最大的负载电阻能取多大?\r\n");
      out.write("（4）SDH的特点有哪些?SDH帧中AU PTR表示什么?它有何作用?\r\n");
      out.write("（5）已测得某数字光接收机的灵敏度P min=10μW，求它的dBm值。\r\n");
      out.write("（6）某光通信工程中继段长度最大为35km,光纤损耗0为0.4dB/km；\r\n");
      out.write("接头数目为20个,接头损耗j为0.1dB/个；光纤活动连接器数目为3个，\r\n");
      out.write("光纤活动连接器损耗c为1dB/个；设备余度Me为3dB;光缆维修余度\r\n");
      out.write("Mc为3dB。计算中继段允许的最大损耗S。\r\n");
      out.write("5、\t介绍基带视频信号光纤传输系统，多路视频信号光纤传输系统等\r\n");
      out.write("（6学时）\r\n");
      out.write("选作题：\r\n");
      out.write("（1）模拟基带直接光强调制光纤传输系统的基本原理是什么?\r\n");
      out.write("（2）描述模拟系统非线性失真的两个主要参数是什么?\r\n");
      out.write("（3）多频道视频信号光纤传输系统的基本原理是什么?\r\n");
      out.write("（4）什么叫做调幅频分多路技术?\r\n");
      out.write("（5）什么叫做调频频分多路技术?\r\n");
      out.write("6、\t介绍光纤放大器的原理，光纤放大器的性能指标等（2学时）\r\n");
      out.write("选作题：\r\n");
      out.write("（1）EDFA的工作原理是什么?有哪些应用方式?\r\n");
      out.write("（2）对于980nm泵浦和1480nm泵浦的EDFA，哪种泵浦方式的功率\r\n");
      out.write("转换效率高?哪种泵浦方式的噪声系数小?为什么?\r\n");
      out.write("（3）EDFA的基本种类有哪些?\r\n");
      out.write("（4）半导体激光放大器的种类有几种?主要原理分别是什么?\r\n");
      out.write("7、\t介绍系统复用基本概念，光波分复用系统，光频分复用系统等（2学时）\r\n");
      out.write("选作题：\r\n");
      out.write("（1）WDM技术的主要特点是什么?\r\n");
      out.write("（2）开放式WDM系统和集成式WDM系统的区别是什么?\r\n");
      out.write("（3）WDM系统的保护方式有几种?\r\n");
      out.write("（4）光频分复用系统和光波分复用系统的区别是什么\r\n");
      out.write("8、\t介绍光交换技术，波长变换技术等（4学时）\r\n");
      out.write("选作题：\r\n");
      out.write("（1）全光网络的中间节点中为什么要进行波长转换?\r\n");
      out.write("（2）波长转换技术主要有哪几种?\r\n");
      out.write("（3）什么是光孤子通信?\r\n");
      out.write("（4）相干光通信的关键技术是什么?\r\n");
      out.write("（5）OXC的特点什么?\r\n");
      out.write("（6）OADM的原理是什么?主要应用在什么地方?\r\n");
      out.write("9、\t介绍光纤传输特性的测量，光纤通信系统的测量（2学时）\r\n");
      out.write("选作题：\r\n");
      out.write("（1）简述剪断法测量光纤损耗的原理\r\n");
      out.write("（2）简述光纤带宽的测量原理\r\n");
      out.write("（3）简述动态范围的测量原理\r\n");
      out.write("三、\t课程教学安排及要求\r\n");
      out.write("本门课程的教学环节包括：\r\n");
      out.write("教学：32学时\r\n");
      out.write("答疑：教师为学生顺利完成本课程的学习任务，设定答疑时间和辅导。\r\n");
      out.write("作业：作业的作用在于巩固所学的知识和培养学生的综合能力。设定\r\n");
      out.write("课上作业和课下作业。\r\n");
      out.write("考试: 课上作业10%, 课下作业20%, 期末考试70%。\r\n");
      out.write("\r\n");
      out.write("四、课程的考核\r\n");
      out.write("1、\t课上作业10%：每次作业以百分制评分，期末以所有课上作业平\r\n");
      out.write("均分的10%计入总成绩，作业抄袭或没有及时交作业者以当次作业零\r\n");
      out.write("分计；\r\n");
      out.write("2、\t课下作业20%,：每次作业以百分制评分，期末以所有课下作业\r\n");
      out.write("平均分的20%计入总成绩，作业抄袭或没有及时交作业者以当次作业\r\n");
      out.write("零分计；\r\n");
      out.write("3、\t期末考试70%：闭卷考试，作弊者以总成绩零分计。\r\n");
      out.write("五、与其它课程的联系\r\n");
      out.write("先修课程：通信原理，光波导理论基础等\r\n");
      out.write("六、建议教材及参考材料\r\n");
      out.write("[1] 孙强，光纤通信系统及其应用，北京：清华大学出版社，2004年\r\n");
      out.write("[2] 顾畹仪，光纤通信系统，北京：人民邮电出版社，1999年\r\n");
      out.write("[3] 原荣，光纤通信网络，北京：电子工业出版社，1999年件\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</pre>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"left\"> \r\n");
      out.write("\r\n");
      out.write("<h3></h3>\r\n");
      out.write("<div id=\"sidebar\">\r\n");
      out.write("\t\t<div id=\"sidebarnav\">\r\n");
      out.write("\r\n");
      out.write("\t<a href=\"Ec/teacher.jsp\">教师信息</a>\r\n");
      out.write("<br><br>\r\n");
      out.write("<a href=\"Ec/course.jsp\">课程介绍\r\n");
      out.write("<br><br>\r\n");
      out.write("大纲内容\r\n");
      out.write("</div>\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<div style=\"clear: both;\"> </div>\r\n");
      out.write("\r\n");
      out.write("<div id=\"footer\">\r\n");
      out.write("北京交通大学电子信息工程学院\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</center>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      if (_jspxFactory != null) _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
