package org.doit.senti.domain.user;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
  private String memberId;
  private String memberPwd;
  private String memberName;
  
}
