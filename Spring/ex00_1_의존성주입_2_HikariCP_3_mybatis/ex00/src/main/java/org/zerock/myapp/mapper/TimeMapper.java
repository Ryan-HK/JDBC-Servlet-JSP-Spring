package org.zerock.myapp.mapper;

import org.apache.ibatis.annotations.Select;

public interface TimeMapper {
	
	
	@Select(value="SELECT to_char(current_date, 'yyyy/MM/dd HH24:mi:ss') FROM dual")
	public abstract String getTime();
	
	public abstract String getTime2();

} // end interface
