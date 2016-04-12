<div class="clearfix" style="border:1px solid #cccccc; border-top:2px solid #b20101;">
<h2 style=" margin:10px 0px 0px 20px; font-size:14px; color:#333333"><?php echo $this->_var['lang']['user_comment']; ?></h2>

<?php if ($this->_var['comments']): ?>
 <?php $_from = $this->_var['comments']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'comment');if (count($_from)):
    foreach ($_from AS $this->_var['comment']):
?>
 <div class="commentsTit">
  <?php if ($this->_var['comment']['username']): ?>
	<b class="username"><?php echo htmlspecialchars($this->_var['comment']['username']); ?>：</b>
	<?php else: ?>
	<b class="username"><?php echo $this->_var['lang']['anonymous']; ?>：</b>
	<?php endif; ?>
  给出 <img src="themes/68ecshop_xiaomifree/images/stars<?php echo $this->_var['comment']['rank']; ?>.gif" alt="<?php echo $this->_var['comment']['comment_rank']; ?>" /> 评分
  <span>( <?php echo $this->_var['comment']['add_time']; ?> )</span>
 </div>
 <div class="commentsContent word">
  <?php echo $this->_var['comment']['content']; ?>
	<?php if ($this->_var['comment']['re_content']): ?>
	<div class="re_content">
	 <b class="f1"><?php echo $this->_var['lang']['admin_username']; ?></b><br />
	 <?php echo $this->_var['comment']['re_content']; ?>
	</div>
	<?php endif; ?>
 </div>
 <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
<?php else: ?>
 <div class="tips"><?php echo $this->_var['lang']['no_comments']; ?></div>
<?php endif; ?>


 <?php if ($this->_var['comments']): ?>
	<div id="pager" class="tr" style="margin-right:10px;">
		<?php echo $this->_var['lang']['pager_1']; ?><?php echo $this->_var['pager']['record_count']; ?><?php echo $this->_var['lang']['pager_2']; ?><?php echo $this->_var['lang']['pager_3']; ?><?php echo $this->_var['pager']['page_count']; ?><?php echo $this->_var['lang']['pager_4']; ?> <a href="<?php echo $this->_var['pager']['page_first']; ?>"><?php echo $this->_var['lang']['page_first']; ?></a> <a href="<?php echo $this->_var['pager']['page_prev']; ?>"><?php echo $this->_var['lang']['page_prev']; ?></a> <a href="<?php echo $this->_var['pager']['page_next']; ?>"><?php echo $this->_var['lang']['page_next']; ?></a> <a href="<?php echo $this->_var['pager']['page_last']; ?>"><?php echo $this->_var['lang']['page_last']; ?></a>
	</div>
	<?php endif; ?>



<div class="Goodpromotion blank">
      <form action="javascript:;" onsubmit="submitComment(this)" method="post" name="commentForm" id="commentForm">
       <table border="0" cellspacing="5" cellpadding="0">
        <tr>
          <td align="right"><?php echo $this->_var['lang']['username']; ?>：</td>
          <td <?php if (! $this->_var['enabled_captcha']): ?><?php endif; ?>><?php if ($_SESSION['user_name']): ?><?php echo $_SESSION['user_name']; ?><?php else: ?><?php echo $this->_var['lang']['anonymous']; ?><?php endif; ?></td>
        </tr>
        <tr>
          <td align="right">E-mail：</td>
          <td>
          <input type="text" name="email" id="email"  maxlength="100" value="<?php echo htmlspecialchars($_SESSION['email']); ?>" class="InputBorder"/>
          </td>
        </tr>
        <tr>
          <td align="right"><?php echo $this->_var['lang']['comment_rank']; ?>：</td>
          <td>
          <input name="comment_rank" type="radio" value="1" id="comment_rank1" /> <img src="themes/68ecshop_xiaomifree/images/stars1.gif" />
          <input name="comment_rank" type="radio" value="2" id="comment_rank2" /> <img src="themes/68ecshop_xiaomifree/images/stars2.gif" />
          <input name="comment_rank" type="radio" value="3" id="comment_rank3" /> <img src="themes/68ecshop_xiaomifree/images/stars3.gif" />
          <input name="comment_rank" type="radio" value="4" id="comment_rank4" /> <img src="themes/68ecshop_xiaomifree/images/stars4.gif" />
          <input name="comment_rank" type="radio" value="5" checked="checked" id="comment_rank5" /> <img src="themes/68ecshop_xiaomifree/images/stars5.gif" />
          </td>
        </tr>
        <tr>
          <td align="right" valign="top"><?php echo $this->_var['lang']['comment_content']; ?>：</td>
          <td>
          <textarea name="content" class="InputBorder" cols="77" rows="3"></textarea>
          <input type="hidden" name="cmt_type" value="<?php echo $this->_var['comment_type']; ?>" />
          <input type="hidden" name="id" value="<?php echo $this->_var['id']; ?>" />
          </td>
        </tr>
        <tr>
          <td colspan="2">
          <?php if ($this->_var['enabled_captcha']): ?>
          <div class="captcha fl">
          <?php echo $this->_var['lang']['comment_captcha']; ?>：<input type="text" name="captcha" size="10"  class="InputBorder"/>
          <img style="position:relative; top:4px;" src="captcha.php?<?php echo $this->_var['rand']; ?>" alt="captcha" onClick="this.src='captcha.php?'+Math.random()">
          </div>
          <?php endif; ?>
          <input name="" type="submit"  value="<?php echo $this->_var['lang']['submit_comment']; ?>" class="bnt_number4 fr">
          </td>
        </tr>
      </table>
      </form>
</div>
</div>


<script type="text/javascript">
//<![CDATA[
<?php $_from = $this->_var['lang']['cmt_lang']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item_0_32812500_1459483871');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item_0_32812500_1459483871']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item_0_32812500_1459483871']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

/**
 * 提交评论信息
*/
function submitComment(frm)
{
  var cmt = new Object;

  //cmt.username        = frm.elements['username'].value;
  cmt.email           = frm.elements['email'].value;
  cmt.content         = frm.elements['content'].value;
  cmt.type            = frm.elements['cmt_type'].value;
  cmt.id              = frm.elements['id'].value;
  cmt.enabled_captcha = frm.elements['enabled_captcha'] ? frm.elements['enabled_captcha'].value : '0';
  cmt.captcha         = frm.elements['captcha'] ? frm.elements['captcha'].value : '';
  cmt.rank            = 0;

  for (i = 0; i < frm.elements['comment_rank'].length; i++)
  {
    if (frm.elements['comment_rank'][i].checked)
    {
       cmt.rank = frm.elements['comment_rank'][i].value;
     }
  }

//  if (cmt.username.length == 0)
//  {
//     alert(cmt_empty_username);
//     return false;
//  }

  if (cmt.email.length > 0)
  {
     if (!(Utils.isEmail(cmt.email)))
     {
        alert(cmt_error_email);
        return false;
      }
   }
   else
   {
        alert(cmt_empty_email);
        return false;
   }

   if (cmt.content.length == 0)
   {
      alert(cmt_empty_content);
      return false;
   }

   if (cmt.enabled_captcha > 0 && cmt.captcha.length == 0 )
   {
      alert(captcha_not_null);
      return false;
   }

   Ajax.call('comment.php', 'cmt=' + cmt.toJSONString(), commentResponse, 'POST', 'JSON');
   return false;
}

/**
 * 处理提交评论的反馈信息
*/
  function commentResponse(result)
  {
    if (result.message)
    {
      alert(result.message);
    }

    if (result.error == 0)
    {
      var layer = document.getElementById('ECS_COMMENT');

      if (layer)
      {
        layer.innerHTML = result.content;
      }
    }
  }

//]]>
</script>