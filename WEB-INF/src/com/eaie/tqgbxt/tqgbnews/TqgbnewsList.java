package com.eaie.tqgbxt.tqgbnews;
import java.util.List;
import com.eaie.common.Page;
public class TqgbnewsList {
	private static Page page;
	private String pageHQL;
	private String countHQL;

	public TqgbnewsList() {

		page = new Page();
		pageHQL = "FROM Tqgbnews";
		countHQL = "SELECT COUNT(*) FROM Tqgbnews";
	}

	public List getTqgbnewsList(int pageIndex, String csearchpart, String cKeyWords) {

		if (csearchpart != null) {
			if (csearchpart.equalsIgnoreCase("stuid")) {

				if (cKeyWords != null) {
					pageHQL = "FROM Commie as commie WHERE commie.stuid like '%"
							+ cKeyWords + "%'";
					countHQL = "SELECT COUNT(*) FROM Commie as commie WHERE commie.stuid like '%"
							+ cKeyWords + "%'";
				}
			}
			if (csearchpart.equalsIgnoreCase("name")) {

				if (cKeyWords != null) {
					pageHQL = "FROM Commie as commie WHERE commie.name like '%"
							+ cKeyWords + "%'";
					countHQL = "SELECT COUNT(*) FROM Commie as commie WHERE commie.name like '%"
							+ cKeyWords + "%'";
				}

			}
			if (csearchpart.equalsIgnoreCase("banji")) {

				if (cKeyWords != null) {
					pageHQL = "FROM Commie as commie WHERE commie.banji like '%"
							+ cKeyWords + "%'";
					countHQL = "SELECT COUNT(*) FROM Commie as commie WHERE commie.banji like '%"
							+ cKeyWords + "%'";
				}

			}
			if (csearchpart.equalsIgnoreCase("branch")) {

				if (cKeyWords != null) {

					pageHQL = "FROM Commie as commie WHERE commie.branch like '%"
							+ cKeyWords + "%'";
					countHQL = "SELECT COUNT(*) FROM Commie as commie WHERE commie.branch like '%"
							+ cKeyWords + "%'";
				}

			}
		}

		page.setMaxPageNum(countHQL, "Tqgbnews");
		return page.getAllByPage(pageIndex, pageHQL);
	}

	public Page getCurrentPage() {
		return page;
	}


}
