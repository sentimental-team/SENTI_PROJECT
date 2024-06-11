package org.doit.senti.domain.board;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Main_CtgrVO {
	
	private int main_ctgr_id;
	private String main_ctgr_name;
	private int cnt;
	
	public Main_CtgrVO(int main_ctgr_id, String main_ctgr_name) {
		this.main_ctgr_id = main_ctgr_id;
		this.main_ctgr_name = main_ctgr_name;
	}
	
}
