
<script type="text/javascript">
var process_request = "<?php echo $this->_var['lang']['process_request']; ?>";
</script>

<script language="javascript"> 
<!--
function killerrors() { 
return true; 
} 
window.onerror = killerrors; 
//-->
</script>
<script type="text/javascript">
var process_request = "<?php echo $this->_var['lang']['process_request']; ?>";
var btn_buy = "<?php echo $this->_var['lang']['btn_buy']; ?>";
var is_cancel = "<?php echo $this->_var['lang']['is_cancel']; ?>";
var select_spe = "<?php echo $this->_var['lang']['select_spe']; ?>";
</script>

<div class="page-header clearfix">
  <div class="block1">
  	
  	<div class="top_menu">
     <div class="top_nav fl"> 
     		<span class="current1 fl"><a  href="./index.php">无线流量先锋&nbsp;</a></span>
        <div class="t_tdcode" style="z-index:9999999;" onmouseover="this.className='t_tdcode tdcode_show'" onmouseout="this.className='t_tdcode'">
            <div class="tdcode_outter">
              <div class="tdcode_inner"> <i class="arrow_outter">◆</i><i class="arrow_inner">◆</i>
                <div class="pic"></div>
                <p class="txt">QQ扫描二维码，随时随地与店家亲密接触<br>
                  精彩活动，劲爆优惠触手可得！</p>
              </div>
            </div>
          </div>
        
     		
       
      </div>
    </div>
    <div class="clear"></div>
    
    
    	 <div class="logo fl" style="position:relative; top:10px;"><a href="index.php" title=""><img src="themes/68ecshop_xiaomifree/images/logo.gif" width="300" height="63" alt="" /></a></div>
         <div class="topArea fr" >
         <div style="float:left; width:370px;">
         <div class="Search fl">
   <script type="text/javascript">
    
    <!--
    function checkSearchForm()
    {
        if(document.getElementById('keyword').value)
        {
            return true;
        }
        else
        {
            alert("<?php echo $this->_var['lang']['no_keywords']; ?>");
            return false;
        }
    }
    -->
    
    </script>
    
    <form id="searchForm" name="searchForm" method="get" action="search.php" onSubmit="return checkSearchForm()">
       <input class="fl" name="keywords" type="text" id="keyword" value="请输入你要查找的商品" onclick="javascript:this.value='';"/>
       <input class="fr btsearch" name="btsearch" type="submit" id="btsearch" value="" onmouseover="this.className='btsearch btsearchover'" onmouseout="this.className='btsearch'" />
    </form>
   
  </div>
  				 <p class="tags">
    			<span><?php if ($this->_var['searchkeywords']): ?><?php $_from = $this->_var['searchkeywords']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'val');if (count($_from)):
    foreach ($_from AS $this->_var['val']):
?> <a href="search.php?keywords=<?php echo urlencode($this->_var['val']); ?>"><?php echo $this->_var['val']; ?></a> <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
       		 <?php endif; ?></span>
   				 </p>
           </div>
     		 <div class="btMap">
       			 
              <div class="top_nav fr"> 
     <?php echo $this->smarty_insert_scripts(array('files'=>'transport.js,utils.js')); ?> <font id="ECS_MEMBERZONE"> <?php 
$k = array (
  'name' => 'member_info',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?> </font>
     <?php if ($this->_var['navigator_list']['top']): ?> 
      <?php $_from = $this->_var['navigator_list']['top']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'nav');$this->_foreach['nav_top_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['nav_top_list']['total'] > 0):
    foreach ($_from AS $this->_var['nav']):
        $this->_foreach['nav_top_list']['iteration']++;
?> 
     <font style="margin-left:20px;"> <a href="<?php echo $this->_var['nav']['url']; ?>" <?php if ($this->_var['nav']['opennew'] == 1): ?> target="_blank" <?php endif; ?>><?php echo $this->_var['nav']['name']; ?></a> </font>

      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
      <?php endif; ?> 
      </div>
             <div class="clear"></div>
            
     	 </div>
       	 
         </div>
    </div>
  </div>
</div>
<div class="globa-nav" style="position:relative; _margin-top:-6px;">
    <div class="shadow">
    
    </div>
    <div class="block1 clearfix">
    <div class="fl" style="width:226px;">
    	<h1  style="background:url(themes/68ecshop_xiaomifree/images/nav_bg.jpg) repeat-x; height:45px; line-height:45px; padding-left:10px; text-align:center"><a href="catalog.php"><font  style="color:#fff; font-size:14px;"><?php echo $this->_var['lang']['all_category']; ?></font></a></h1>
    </div>
      <div class="allMenu fl"><a href="index.php" title="" <?php if ($this->_var['navigator_list']['config']['index'] == 1): ?> class="current"<?php endif; ?>><?php echo $this->_var['lang']['home']; ?></a>
        <?php $_from = $this->_var['navigator_list']['middle']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'nav');$this->_foreach['nav_middle_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['nav_middle_list']['total'] > 0):
    foreach ($_from AS $this->_var['nav']):
        $this->_foreach['nav_middle_list']['iteration']++;
?> 
        <?php if ($this->_foreach['nav_middle_list']['iteration'] < 8): ?> 
     <a href="<?php echo $this->_var['nav']['url']; ?>" <?php if ($this->_var['nav']['active'] == 1): ?> class="current"<?php endif; ?> <?php if ($this->_var['nav']['opennew'] == 1): ?>target="_blank" <?php endif; ?> title="<?php echo $this->_var['nav']['name']; ?>" ><?php echo $this->_var['nav']['name']; ?></a>
        <?php endif; ?> 
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
      </div>
		</div>
</div>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/themes/68ecshop_xiaomifree/css/zzsc.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/themes/68ecshop_xiaomifree/js/jquery-1.7.min.js"></script>
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
</head>

<body>
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


