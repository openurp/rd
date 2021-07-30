[#ftl]
[@b.head/]
[@b.toolbar title="编辑成果完成人"]bar.addBack();[/@]
[@b.tabs]
  [@b.form action=b.rest.save(rdAchievementMember) theme="list"]
    [@b.number name="rdAchievementMember.idx" label="次序" value=rdAchievementMember.idx! required="true" maxlength="2"/]
    [@b.textfield name="rdAchievementMember.name" label="姓名" value=rdAchievementMember.name! required="false" maxlength="100"/]
    [@b.select name="rdAchievementMember.user.id" label="校内账户"  required="false"
                 style="width:300px;" href=urp.api+"/base/users.json?q={term}&isTeacher=true" option="id,code+' '+data.name+' '+data.department.name"]
      [#if rdAchievementMember.user??]
      <option value="${rdAchievementMember.user.id!}" selected="true">${rdAchievementMember.user.description}</option>
      [/#if]
    [/@]
    [@b.formfoot]
      <input type="hidden" name="rdAchievementMember.achievement.id" value="${Parameters['rdAchievementMember.achievement.id']}"/>
      [@b.reset/]&nbsp;&nbsp;[@b.submit value="action.submit"/]
    [/@]
  [/@]
[/@]
[#list 1..10 as i]<br>[/#list]
[@b.foot/]
