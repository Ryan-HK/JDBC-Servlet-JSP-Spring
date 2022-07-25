package exam1_command_and_model.domain;

import java.util.Date;

import lombok.Value;

@Value
public class EmpVO {
	private Integer empno;
	private String ename;
	private String job;
	private Integer mgr;
	private Date hireDate;
	private Double sal;
	private Double comm;
	private Integer deptno;
} // end class
