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

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js')); ?>
<script type="text/javascript" src="themes/68ecshop_xiaomifree/js/action.js"></script>
<style>
.ur_here{width:760px;}

		
		.download {
			display:block;
			height:60px;
			line-height:60px;
			text-align:center;
			margin:5px auto;
			width:45%;
			font-family: "宋体","微软雅黑","Arial";
			font-size:2em;
			
			background-color:rgba(147, 232, 146, 0.68);
			
			border-radius:5px;
		}
	
</style>
</head>
<body>
<?php echo $this->fetch('library/page_header1.lbi'); ?>
<div class="blank"></div>
<div class="block clearfix"  style="background-color:#FFFFFF; margin-bottom:10px; padding-bottom:4px; padding-top:10px">
	<div id="articleLeft" class="fl">
	<?php if ($this->_var['related_goods']): ?>
	<div class="mod1 mod2 blank" id="articleRelated" style="padding-bottom:10px;">
	<span class="lt"></span><span class="lb"></span><span class="rt"></span><span class="rb"></span>
	<h1 class="mod2tit"><?php echo $this->_var['lang']['releate_goods']; ?></h1>
	<div class="mod2con" >
		<?php $_from = $this->_var['related_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'releated_goods_data');if (count($_from)):
    foreach ($_from AS $this->_var['releated_goods_data']):
?>
	    <ul class="attribute" >
      <li>
       <a href="<?php echo $this->_var['releated_goods_data']['url']; ?>" class="fl"><img src="<?php echo $this->_var['releated_goods_data']['goods_thumb']; ?>" alt="<?php echo $this->_var['releated_goods_data']['goods_name']; ?>" align="left" /></a>
			<p class="fl" style="width:114px;"> <a href="<?php echo $this->_var['releated_goods_data']['url']; ?>" title="<?php echo $this->_var['releated_goods_data']['goods_name']; ?>"><?php echo $this->_var['releated_goods_data']['short_name']; ?></a><br />
			 <?php if ($this->_var['releated_goods_data']['promote_price'] != 0): ?>
			 <?php echo $this->_var['lang']['promote_price']; ?><b class="f1"><?php echo $this->_var['releated_goods_data']['formated_promote_price']; ?></b><br />
			 <?php else: ?>
			 <?php echo $this->_var['lang']['shop_price']; ?><b class="f1"><?php echo $this->_var['releated_goods_data']['shop_price']; ?></b></p>
			 <?php endif; ?>
      </li>
     </ul>
     <div class="clear"></div>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
	 </div>
	</div>
	<script type="text/javascript">divheight("articleRelated");</script>
	<?php endif; ?> 
	
	<?php echo $this->fetch('library/helpleft.lbi'); ?>
  
	</div>


  <div id="articleRight" class="fr" >
    <?php echo $this->fetch('library/ur_here.lbi'); ?>
	 <div class="articleBox">
	  <h1 class="articleTit tc"><?php echo htmlspecialchars($this->_var['article']['title']); ?></h1>
	  <div class="author tc"> 
		  <?php echo htmlspecialchars($this->_var['article']['author']); ?> / <?php echo $this->_var['article']['add_time']; ?>
		  <div class="articleSize">[<a href="javascript:articleSize('16','30')">大</a>] [<a href="javascript:articleSize('14','24')">中</a>] [<a href="javascript:articleSize('12','21')">小</a>]</div>
	  </div>
      <div style="border-top: #efefef solid 1px;"><div>
      <div id="down" >
<!-- <div><img src="/images/goods_1.jpg" / ></div>
<div><img src="/images/goods_2.jpg" / ></div>
<div><img src="/images/goods_3.jpg" / ></div> -->
</div>
		<?php if ($this->_var['article']['content']): ?>
		<div id="article" class="word">
		 <?php echo $this->_var['article']['content']; ?>
		</div> 
		<?php endif; ?>
		<?php if ($this->_var['article']['open_type'] == 2 || $this->_var['article']['open_type'] == 1): ?>
			<div class="tr"><a href="<?php echo $this->_var['article']['file_url']; ?>" target="_blank"><u><?php echo $this->_var['lang']['relative_file']; ?></u></a></div>
		<?php endif; ?>
		 <div class="articlePrev">
			
			<span style="margin-right:350px;">
            	 <?php echo $this->_var['lang']['next_article']; ?>：
				 <?php if ($this->_var['next_article']): ?>
				 <a href="<?php echo $this->_var['next_article']['url']; ?>"><?php echo $this->_var['next_article']['title']; ?></a>
				 <?php else: ?>
				 Empty！
				 <?php endif; ?>
                 
            </span>
			 
             <span style="">
				<?php echo $this->_var['lang']['prev_article']; ?>：
				<?php if ($this->_var['prev_article']): ?>
				<a href="<?php echo $this->_var['prev_article']['url']; ?>"><?php echo $this->_var['prev_article']['title']; ?></a>
				<?php else: ?>
				 Empty！
				<?php endif; ?>
             </span>
		 </div>
	</div>	

	</div>

</div>
</div>
</div>


<?php echo $this->fetch('library/page_footer_z.lbi'); ?>
</body>
</html>
