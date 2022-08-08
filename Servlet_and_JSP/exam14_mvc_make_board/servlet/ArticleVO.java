package exam10_mvc_make_board;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ArticleVO {
	private Integer level;
	private	Integer articleNO;
	private Integer parentNO;
	private String title;
	private String content;
	private String imageFileName;
	private String id;
	private Date writeDate;
	
}
