<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />

<title><?php echo $this->_var['page_title']; ?></title>

<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>" rel="stylesheet" type="text/css" />
<?php if ($this->_var['cat_style']): ?>
<link href="<?php echo $this->_var['cat_style']; ?>" rel="stylesheet" type="text/css" />
<?php endif; ?>

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,global.js,compare.js')); ?>
<script type="text/javascript" src="themes/68ecshop_xiaomifree/js/action.js"></script>

</head>
<body>
<?php echo $this->fetch('library/page_header.lbi'); ?>
<div class="clear"></div>
<div class="block1 clearfix"  style="background-color:#FFFFFF; margin-bottom:10px; padding-bottom:0px;">
<?php echo $this->fetch('library/ur_here.lbi'); ?>
  <div id="pageLeft" class="fl">
	 
	 <?php echo $this->fetch('library/category_tree.lbi'); ?> 
	 <?php echo $this->fetch('library/top10.lbi'); ?>
	 <?php echo $this->fetch('library/history.lbi'); ?>
	 <?php echo $this->fetch('library/promotion_info.lbi'); ?>
   
	</div>
	<div id="pageRight" class="fr">
    
	<?php if ($this->_var['brands']['1'] || $this->_var['price_grade']['1'] || $this->_var['filter_attr_list']): ?>
    <h1 class="screen"><span style="margin-top:7px; display:block; margin-left:18px; color:#333;"><?php echo $this->_var['lang']['goods_filter']; ?></span></h1>
	<div class="mod1 blank" id="filter">
	<div class="mod1con">
		  <?php if ($this->_var['brands']['1']): ?>
			<div class="screeBox">
			  <strong><?php echo $this->_var['lang']['brand']; ?>：</strong>
				<?php $_from = $this->_var['brands']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'brand');if (count($_from)):
    foreach ($_from AS $this->_var['brand']):
?>
					<?php if ($this->_var['brand']['selected']): ?>
					<p><?php echo $this->_var['brand']['brand_name']; ?></p>
					<?php else: ?>
					<a href="<?php echo $this->_var['brand']['url']; ?>"><?php echo $this->_var['brand']['brand_name']; ?></a>&nbsp;
					<?php endif; ?>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</div>
			<?php endif; ?>
			<?php if ($this->_var['price_grade']['1']): ?>
			<div class="screeBox">
			<strong><?php echo $this->_var['lang']['price']; ?>：</strong>
			<?php $_from = $this->_var['price_grade']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'grade');if (count($_from)):
    foreach ($_from AS $this->_var['grade']):
?>
				<?php if ($this->_var['grade']['selected']): ?>
				<p><?php echo $this->_var['grade']['price_range']; ?></p>
				<?php else: ?>
				<a href="<?php echo $this->_var['grade']['url']; ?>"><?php echo $this->_var['grade']['price_range']; ?></a>&nbsp;
				<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</div>
			<?php endif; ?>
			<?php $_from = $this->_var['filter_attr_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'filter_attr_0_96875000_1459494193');if (count($_from)):
    foreach ($_from AS $this->_var['filter_attr_0_96875000_1459494193']):
?>
      <div class="screeBox">
			<strong><?php echo htmlspecialchars($this->_var['filter_attr_0_96875000_1459494193']['filter_attr_name']); ?>：</strong>
			<?php $_from = $this->_var['filter_attr_0_96875000_1459494193']['attr_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'attr');if (count($_from)):
    foreach ($_from AS $this->_var['attr']):
?>
				<?php if ($this->_var['attr']['selected']): ?>
				<p><?php echo $this->_var['attr']['attr_value']; ?></p>
				<?php else: ?>
				<a href="<?php echo $this->_var['attr']['url']; ?>"><?php echo $this->_var['attr']['attr_value']; ?></a>&nbsp;
				<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</div>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
		</div>
	</div>
	<script type="text/javascript">divheight("filter");</script>
	<?php endif; ?>	
	 
  	
	<?php echo $this->fetch('library/goods_list.lbi'); ?>
	<?php echo $this->fetch('library/pages.lbi'); ?>

	</div>
</div>

<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/shop/themes/68ecshop_xiaomifree/css/zzsc.css" rel="stylesheet" type="text/css"/>

</head>


<div class="yb_conct">
  <div class="yb_bar">
    <ul>
      <li class="yb_top">返回顶部</li>
      <li class="yb_phone">10086</li>
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
<?php echo $this->fetch('library/page_footer.lbi'); ?>
</body>
</html>


