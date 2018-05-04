package com.oracle.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oracle.dao.TbGuideMapper;
import com.oracle.dao.TbStateMapper;
import com.oracle.dao.TbTeacherMapper;
import com.oracle.vo.TbGuide;
import com.oracle.vo.TbGuideExample;
import com.oracle.vo.TbState;
import com.oracle.vo.TbStateExample;
import com.oracle.vo.TbTeacher;
import com.oracle.vo.TbTeacherExample;

@Service
public class CommonService {

	@Autowired
	TbGuideMapper guideDao;
	@Autowired
	TbStateMapper stateDao;
	@Autowired
	TbTeacherMapper teacherDao;

	@Transactional(readOnly = true)
	public String getState(Integer type, Integer stateId) {
		TbStateExample e = new TbStateExample();
		e.createCriteria().andTypeEqualTo(type);
		e.setOrderByClause("stateName");

		List<TbState> list = stateDao.selectByExample(e);

		// 组装字符串<option value='stateid' selected >stateName</option>
		StringBuilder sb = new StringBuilder();

		for (TbState s : list) {
			if (s.getStateid().equals(stateId)) {
				sb.append("<option value=" + s.getStateid() + " selected>").append(s.getStatename())
						.append("</option>");
			} else {
				sb.append("<option value=" + s.getStateid() + " >").append(s.getStatename()).append("</option>");
			}
		}

		return sb.toString();
	}

	@Transactional(readOnly = true)
	public String getTeachers(Integer teacherId) {
		TbTeacherExample e = new TbTeacherExample();
		e.createCriteria().andStateEqualTo(1);
		e.setOrderByClause("teachertypeid desc");

		List<TbTeacher> list = teacherDao.selectByExample(e);

		// 组装字符串<option value='stateid' selected >stateName</option>
		StringBuilder sb = new StringBuilder();

		for (TbTeacher s : list) {
			if (s.getTeacherid().equals(teacherId)) {
				sb.append("<option value=" + s.getTeacherid() + " selected>").append(s.getName()).append("</option>");
			} else {
				sb.append("<option value=" + s.getTeacherid() + " >").append(s.getName()).append("</option>");
			}
		}

		return sb.toString();
	}

	@Transactional(readOnly = true)
	public String getGuides(Integer type, Integer guideId) {
		TbGuideExample e = new TbGuideExample();
		e.createCriteria().andTypeEqualTo(type).andStateEqualTo(1);
		e.setOrderByClause("name");
		List<TbGuide> list = guideDao.selectByExample(e);

		// 组装字符串<option value='stateid' selected >stateName</option>
		StringBuilder sb = new StringBuilder();

		for (TbGuide s : list) {
			if (s.getGuideid().equals(guideId)) {
				sb.append("<option value=" + s.getGuideid() + " selected>").append(s.getName()).append("</option>");
			} else {
				sb.append("<option value=" + s.getGuideid() + " >").append(s.getName()).append("</option>");
			}
		}

		return sb.toString();
	}

}
