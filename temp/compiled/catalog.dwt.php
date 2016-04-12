<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title><?php echo $this->_var['page_title']; ?></title>

<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />
<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>" rel="stylesheet" type="text/css" />

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js')); ?>
</head>
<body>
<?php echo $this->fetch('library/page_header1.lbi'); ?>
<div class="clear"></div>

<div class="block" style="background-color:#FFFFFF; margin-bottom:10px; padding-bottom:4px;"><?php echo $this->fetch('library/ur_here.lbi'); ?>
 <div class="mod1 blank">
	<span class="lt"></span><span class="lb"></span><span class="rt"></span><span class="rb"></span>
	<h1 class="mod1tit"><?php echo $this->_var['lang']['all_category']; ?></h1>
	<div class="mod1con clearfix">
	<?php $_from = $this->_var['cat_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');if (count($_from)):
    foreach ($_from AS $this->_var['cat']):
?>
            <div style="white-space:nowrap; padding-left:<?php echo $this->_var['cat']['level*2']; ?>em;
              <?php if ($this->_var['cat']['has_children'] == 0): ?>float:left;padding-left: 1em;<?php else: ?>clear:both;font-weight:bold;padding-top: 10px;<?php endif; ?>
              "><a href="<?php echo $this->_var['cat']['url']; ?>"><?php echo $this->_var['cat']['cat_name']; ?>(<?php echo $this->_var['cat']['goods_num']; ?>)</a></div>
   <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	</div>
</div>
</div>

<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/themes/68ecshop_xiaomifree/css/zzsc.css" rel="stylesheet" type="text/css"/>
<link href="/shop/themes/68ecshop_xiaomifree/css/zzsc.css" rel="stylesheet" type="text/css"/>

</head>

<body>
<div class="yb_conct">
  <div class="yb_bar">
    <ul>
      <li class="yb_top">返回顶部</li>
      <li class="yb_phone"></li>
      <li class="yb_QQ">
      	<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=207055779&site=qq&menu=yes" title="即刻发送您的需求">在线咨询</a>
      </li>
      <li class="yb_ercode" style="height:53px;">支付宝二维码 <br>
        <img class="hd_qr" src="themes/68ecshop_xiaomifree/images/weixin.jpg" width="125" alt="付款"> </li>
    </ul>
  </div>
</div>
<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.js"></script>
<script>
$(function() {
	// 悬浮窗口
	$(".yb_conct").hover(function() {
		$(".yb_conct").css("right", "5px");
		$(".yb_bar .yb_ercode").css('height', '200px');
	}, function() {
		$(".yb_conct").css("right", "-127px");
		$(".yb_bar .yb_ercode").css('height', '53px');
	});
	// 返回顶部
	$(".yb_top").click(function() {
		$("html,body").animate({
			'scrollTop': '0px'
		}, 300)
	});
});
</script>




<?php echo $this->fetch('library/page_footer_z.lbi'); ?>
</body>
</html>
