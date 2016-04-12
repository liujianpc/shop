<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />

<title><?php echo $this->_var['page_title']; ?></title>



<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>" rel="stylesheet" type="text/css" />
<link rel="alternate" type="application/rss+xml" title="RSS|<?php echo $this->_var['page_title']; ?>" href="<?php echo $this->_var['feed_url']; ?>" />

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,index.js')); ?>
<script language="javascript"> 
<!--
/*屏蔽所有的js错误*/
function killerrors() { 
return true; 
} 
window.onerror = killerrors; 
//-->
</script>
<script type="text/javascript" src="themes/68ecshop_xiaomifree/js/action.js"></script>
<script type="text/javascript" src="themes/68ecshop_xiaomifree/js/scrollpic.js"></script>
<script type="text/javascript" src="themes/68ecshop_xiaomifree/js/roll.js"></script>
<script src="themes/68ecshop_xiaomifree/js/common.min.js"></script>
<script language="JavaScript" src="themes/68ecshop_xiaomifree/js/index.min.js?0622"></script>

</head>
<body>
<?php echo $this->fetch('library/page_header.lbi'); ?>

<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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


<div class="blank clearfix" style="position:relative; float:left;width:1190px; margin:0 auto 10px;">
 <?php echo $this->fetch('library/category_tree_index.lbi'); ?>
  <?php echo $this->fetch('library/index_ad.lbi'); ?>
 </div>

<div class="block1 clearfix" style="background-color:#fff;">
  <div id="pageLeft" class="fl">
    <div class="w230 blank">
      <div class="mod1" >
        <h1 class="mod1tit"><?php echo $this->_var['lang']['shop_notice']; ?></h1>
        <div class="mod1con shop_notice"> 
 </div>
      </div>
      <script type="text/javascript">divheight("mod1");</script> 
    </div>
		<div class="w230"> 

		</div>
    <div class="w230"> <?php echo $this->fetch('library/top10.lbi'); ?></div>
    <div class="w230"> <?php echo $this->fetch('library/brands.lbi'); ?> </div>
    <div class="w230 "> <?php echo $this->fetch('library/invoice_query.lbi'); ?></div>
  </div>
  <div id="pageRight" class="fr clearfix"> 
    
     
    
    <?php if ($this->_var['hot_goods']): ?> 
    <?php echo $this->fetch('library/recommend_hot.lbi'); ?> 
    <?php endif; ?> 
    
     
    
    <?php if ($this->_var['best_goods']): ?> 
    
    <?php echo $this->fetch('library/recommend_best.lbi'); ?> 
    
    <?php endif; ?> 
    <?php echo $this->fetch('library/recommend_new.lbi'); ?> </div>
</div>
<div style=" height:10px; line-height:10px; clear:both;"></div>
<div class="block1"> 
<?php $this->assign('cat_goods',$this->_var['cat_goods_1']); ?><?php $this->assign('goods_cat',$this->_var['goods_cat_1']); ?><?php echo $this->fetch('library/cat_goods.lbi'); ?>
<?php $this->assign('cat_goods',$this->_var['cat_goods_6']); ?><?php $this->assign('goods_cat',$this->_var['goods_cat_6']); ?><?php echo $this->fetch('library/cat_goods.lbi'); ?>
 </div>
<div class="block1"> 
<?php $this->assign('cat_goods',$this->_var['cat_goods_12']); ?><?php $this->assign('goods_cat',$this->_var['goods_cat_12']); ?><?php echo $this->fetch('library/cat_goods.lbi'); ?>
 </div>
 
<div class="block1">
<?php echo $this->fetch('library/page_footer.lbi'); ?>
</div>
<SCRIPT type=text/javascript>(function(){window._currentWidth=950;window.onresize=function(){window._currentWidth=950;index=0;autoRun();};})();var imgDom=M.$("a","#JS_side_stage");for(var i=0,ii=imgDom.length;i<ii;i++){imgDom[i].style.cssText="background:url("+imgDom[i].getAttribute("data-bg")+") center center no-repeat";imgDom[i].removeAttribute("data-bg");}var stage=M.$("#JS_side_stage"),imgList=M.$("a",stage),handler=M.$("a","#JS_side_nav"),len=handler.length,current=0,index=0;for(var k=0,kk=len;k<kk;k++){handler[k]._key=k;handler[k].onmouseover=function(){index=this._key;clearInterval(auto);autoRun();};handler[k].onmouseout=function(){auto=setInterval(function(){autoRun();},5000);};}var autoRun=function(){M.removeClass(handler[current],"current");M.addClass(handler[index],"current");M.Animate(stage,{marginLeft:(0-index)*window._currentWidth+"px"},200);current=index;index=(index>=len-1)?0:index+1;};var auto=setInterval(function(){autoRun();},5000);</SCRIPT>
<script type="text/javascript">divheight("links");</script>	
</body>
</html>
