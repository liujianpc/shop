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
<script type="text/javascript" src="themes/68ecshop_xiaomifree/js/mzp-packed-me.js"></script>
<script type="text/javascript" src="themes/68ecshop_xiaomifree/js/action.js"></script>
<style>.ur_here{width:980px;}</style>
</head>
<body>
<?php echo $this->fetch('library/page_header1.lbi'); ?>
<div class="clear"></div>

<div class="block clearfix"  style="background-color:#FFFFFF; margin-bottom:10px; padding-bottom:10px">
<?php echo $this->fetch('library/ur_here.lbi'); ?>
  <div class="clearfix">
  	 
	  <div class="goodsimgbox fl">
		  <div id="focuscont">
		 
     <?php if ($this->_var['pictures']): ?>
<a style=" border:1px solid #d2d0d0; width:357px; height:510px; display:block; padding:0;" href="<?php echo $this->_var['goods']['goods_img']; ?>" id="zoom1" class="MagicZoom MagicThumb" title="<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>">
      <img src="<?php echo $this->_var['goods']['goods_img']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>" width="357px" height="510px" style="margin:0px;"/>
      
     </a>
         <?php else: ?>
         <img src="<?php echo $this->_var['goods']['goods_img']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>" width="357px" height="510px"/>
         <?php endif; ?>
		 
	   </div>

<?php if ($this->_var['pictures']): ?>

<div class="picture" id="imglist">
		

        <?php $_from = $this->_var['pictures']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'picture');$this->_foreach['picture'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['picture']['total'] > 0):
    foreach ($_from AS $this->_var['picture']):
        $this->_foreach['picture']['iteration']++;
?>
        <a  href="<?php echo $this->_var['picture']['img_url']; ?>" rel="zoom1" rev="<?php echo $this->_var['picture']['img_url']; ?>" title="">
        <img src="<?php if ($this->_var['picture']['thumb_url']): ?><?php echo $this->_var['picture']['thumb_url']; ?><?php else: ?><?php echo $this->_var['picture']['img_url']; ?><?php endif; ?>" alt="" <?php if ($this->_foreach['picture']['iteration'] == 1): ?>class="onbg"<?php else: ?>class="autobg"<?php endif; ?> /></a>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

                        
</div>  
		  
<script type="text/javascript">
	mypicBg();
</script>
<?php endif; ?>
		</div>

    
     
		<div class="goodstxtbox fr" style="width:610px;">
		  <h4 class="goodName">
		 <?php echo $this->_var['goods']['goods_style_name']; ?>
		 <div class="prev">
        <?php if ($this->_var['prev_good']): ?>
        <a href="<?php echo $this->_var['prev_good']['url']; ?>" style="color:#CCC; font-size:12px;">上一个</a>
        <?php endif; ?>
        <?php if ($this->_var['next_good']): ?>
        <a href="<?php echo $this->_var['next_good']['url']; ?>" style="color:#CCC; font-size:12px;">下一个</a>
        <?php endif; ?>
     </div>
		 </h4>
		 <form class="goodsform" action="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)" method="post" name="ECS_FORMBUY" id="ECS_FORMBUY" >
			<?php if ($this->_var['promotion']): ?>
			<div class="Goodpromotion">
			<font id="fontcolor"><?php echo $this->_var['lang']['activity']; ?></font><br />
			<?php $_from = $this->_var['promotion']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
			<?php if ($this->_var['item']['type'] == "snatch"): ?>
			<a href="snatch.php" title="<?php echo $this->_var['lang']['snatch']; ?>">[<?php echo $this->_var['lang']['snatch']; ?>]</a>
			<?php elseif ($this->_var['item']['type'] == "group_buy"): ?>
			<a href="group_buy.php" title="<?php echo $this->_var['lang']['group_buy']; ?>">[<?php echo $this->_var['lang']['group_buy']; ?>]</a>
			<?php elseif ($this->_var['item']['type'] == "auction"): ?>
			<a href="auction.php" title="<?php echo $this->_var['lang']['auction']; ?>">[<?php echo $this->_var['lang']['auction']; ?>]</a>
			<?php elseif ($this->_var['item']['type'] == "favourable"): ?>
			<a href="activity.php" title="<?php echo $this->_var['lang']['favourable']; ?>">[<?php echo $this->_var['lang']['favourable']; ?>]</a>
			<?php endif; ?>
			<a href="<?php echo $this->_var['item']['url']; ?>" title="<?php echo $this->_var['lang'][$this->_var['item']['type']]; ?> <?php echo $this->_var['item']['act_name']; ?><?php echo $this->_var['item']['time']; ?>"><?php echo $this->_var['item']['act_name']; ?></a><br />
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			<script>setInterval("colorStyle('fontcolor','a','b')",300);</script>
			</div>
			<?php endif; ?>
            
			<p class="goodsInfo">
            <span>
			<?php if ($this->_var['cfg']['show_goodssn']): ?>
			<?php echo $this->_var['lang']['goods_sn']; ?><?php echo $this->_var['goods']['goods_sn']; ?>
			<?php endif; ?>
			</span>
            <span>
			<?php if ($this->_var['goods']['goods_number'] != "" && $this->_var['cfg']['show_goodsnumber']): ?>
			<?php if ($this->_var['goods']['goods_number'] == 0): ?>
			<?php echo $this->_var['lang']['goods_number']; ?><img src="themes/68ecshop_xiaomifree/images/wuhuo.gif" />
			<?php else: ?>
			<?php echo $this->_var['lang']['goods_number']; ?> <?php echo $this->_var['goods']['goods_number']; ?> <?php echo $this->_var['goods']['measure_unit']; ?>
			<?php endif; ?>
			<?php endif; ?>
			</span>
            <span>
			<?php if ($this->_var['goods']['goods_brand'] != "" && $this->_var['cfg']['show_brand']): ?>
			<?php echo $this->_var['lang']['goods_brand']; ?><a href="<?php echo $this->_var['goods']['goods_brand_url']; ?>" ><u><?php echo $this->_var['goods']['goods_brand']; ?></u></a>
			<?php endif; ?>
			</span>
            <span>
			<?php if ($this->_var['cfg']['show_goodsweight']): ?>
			<?php echo $this->_var['lang']['goods_weight']; ?><?php echo $this->_var['goods']['goods_weight']; ?>
			<?php endif; ?>
			</span>
            <span>
			<?php if ($this->_var['cfg']['show_addtime']): ?>
			<?php echo $this->_var['lang']['add_time']; ?><?php echo $this->_var['goods']['add_time']; ?>
			<?php endif; ?>
			</span>
            <span>
			
			<?php echo $this->_var['lang']['goods_click_count']; ?>：<?php echo $this->_var['goods']['click_count']; ?>
            </span>
            <span>
			<?php echo $this->_var['lang']['goods_rank']; ?> <img src="themes/68ecshop_xiaomifree/images/stars<?php echo $this->_var['goods']['comment_rank']; ?>.gif" alt="comment rank <?php echo $this->_var['goods']['comment_rank']; ?>" />
            </span>
			</p>
			
			<div class="Goodpromotion" style="float:left; width:550px; border-left:none; border-right:none;">


			<?php if ($this->_var['goods']['is_promote'] && $this->_var['goods']['gmt_end_time']): ?>
			<font class="goodspice"><?php echo $this->_var['lang']['promote_price']; ?><font class="price"  style="font-size:20px;"><?php echo $this->_var['goods']['promote_price']; ?></font></font>
            <?php endif; ?>
            <font style="font-size:12px;"><?php echo $this->_var['lang']['shop_price']; ?></font><font class="price" id="ECS_SHOPPRICE" style="font-size:20px;"><?php echo $this->_var['goods']['shop_price_formated']; ?></font><br />
            
			<?php if ($this->_var['cfg']['show_marketprice']): ?>
			<font class="goodspice" style="color:#CCC"><?php echo $this->_var['lang']['market_price']; ?><span class="market"><?php echo $this->_var['goods']['market_price']; ?></span></font><br />
			<?php endif; ?>

			<?php $_from = $this->_var['rank_prices']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'rank_price');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['rank_price']):
?>
			<font class="goodspice" style="margin-right:15px;"><?php echo $this->_var['rank_price']['rank_name']; ?>：<font class="" id="ECS_RANKPRICE_<?php echo $this->_var['key']; ?>"><?php echo $this->_var['rank_price']['price']; ?></font></font>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

            
            <font class="goodspiceA">
			<?php if ($this->_var['affiliate']['on']): ?>
			<a href="user.php?act=affiliate&goodsid=<?php echo $this->_var['goods']['goods_id']; ?>" style="font-size:12px;">分享</a>|
			<?php endif; ?>
            <a href="javascript:collect(<?php echo $this->_var['goods']['goods_id']; ?>)" style="font-size:12px;">暂存</a>
            </font>
            <br />

			</div>
          <div class="clear"></div>
			<div style=" margin-left:10px;">
			<?php if ($this->_var['goods']['is_promote'] && $this->_var['goods']['gmt_end_time']): ?>
			<font style="font-size:12px;"><?php echo $this->smarty_insert_scripts(array('files'=>'lefttime.js')); ?>
			<?php echo $this->_var['lang']['residual_time']; ?> <font class="a" id="leftTime"><?php echo $this->_var['lang']['please_waiting']; ?></font></font><br />
			<?php endif; ?>
			
			<?php if ($this->_var['goods']['give_integral'] > 0): ?>
			<font style="font-size:12px;"><?php echo $this->_var['lang']['goods_give_integral']; ?><font class="price"><?php echo $this->_var['goods']['give_integral']; ?> <?php echo $this->_var['points_name']; ?></font></font><br />
			<?php endif; ?>
			<?php if ($this->_var['cfg']['use_integral']): ?>
			<font style="font-size:12px;" ><?php echo $this->_var['lang']['goods_integral']; ?><font class="price"><?php echo $this->_var['goods']['integral']; ?> <?php echo $this->_var['points_name']; ?></font></font><br />
			<?php endif; ?>
			<?php if ($this->_var['goods']['bonus_money']): ?>
			<font style="font-size:12px;"><?php echo $this->_var['lang']['goods_bonus']; ?><font class="price"><?php echo $this->_var['goods']['bonus_money']; ?></font></font><br />
			<?php endif; ?>
			
			<?php if ($this->_var['volume_price_list']): ?>
		 <font class="a"><?php echo $this->_var['lang']['volume_price']; ?>：</font><br />
			<table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#cccccc" class="blank" style="font-size:12px;">
				<tr>
				<td align="center" bgcolor="#FFFFFF"><?php echo $this->_var['lang']['number_to']; ?></td>
				<td align="center" bgcolor="#FFFFFF"><?php echo $this->_var['lang']['preferences_price']; ?></td>
				</tr>
				<?php $_from = $this->_var['volume_price_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('price_key', 'price_list');if (count($_from)):
    foreach ($_from AS $this->_var['price_key'] => $this->_var['price_list']):
?>
				<tr>
				<td align="center" bgcolor="#FFFFFF" class="shop"><?php echo $this->_var['price_list']['number']; ?></td>
				<td align="center" bgcolor="#FFFFFF" class="price"><?php echo $this->_var['price_list']['format_price']; ?></td>
				</tr>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</table>
		 <?php endif; ?>
		
			
			
			<?php $_from = $this->_var['specification']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('spec_key', 'spec');if (count($_from)):
    foreach ($_from AS $this->_var['spec_key'] => $this->_var['spec']):
?>
			<font style="font-size:12px;"><?php echo $this->_var['spec']['name']; ?>：</font>
			
			<?php if ($this->_var['spec']['attr_type'] == 1): ?>
			<?php if ($this->_var['cfg']['goodsattr_style'] == 1): ?>
			<br />
			<?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
			<label for="spec_value_<?php echo $this->_var['value']['id']; ?>">
			<input type="radio" name="spec_<?php echo $this->_var['spec_key']; ?>" value="<?php echo $this->_var['value']['id']; ?>" id="spec_value_<?php echo $this->_var['value']['id']; ?>" <?php if ($this->_var['key'] == 0): ?>checked<?php endif; ?> onClick="changePrice()" />
			<font style="font-size:12px;"><?php echo $this->_var['value']['label']; ?> [<?php if ($this->_var['value']['price'] > 0): ?><?php echo $this->_var['lang']['plus']; ?><?php elseif ($this->_var['value']['price'] < 0): ?><?php echo $this->_var['lang']['minus']; ?><?php endif; ?> <?php echo $this->_var['value']['format_price']; ?>] </font></label><br />
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			<input type="hidden" name="spec_list" value="<?php echo $this->_var['key']; ?>" />
			<?php else: ?>
			<select name="spec_<?php echo $this->_var['spec_key']; ?>" onChange="changePrice()" class="InputBorder">
				<?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
				<option label="<?php echo $this->_var['value']['label']; ?>" value="<?php echo $this->_var['value']['id']; ?>">
                <font style="font-size:12px;">
                <?php echo $this->_var['value']['label']; ?> <?php if ($this->_var['value']['price'] > 0): ?><?php echo $this->_var['lang']['plus']; ?><?php elseif ($this->_var['value']['price'] < 0): ?><?php echo $this->_var['lang']['minus']; ?><?php endif; ?><?php if ($this->_var['value']['price'] != 0): ?><?php echo $this->_var['value']['format_price']; ?><?php endif; ?></font></option>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</select>
			<br />
			<input type="hidden" name="spec_list" value="<?php echo $this->_var['key']; ?>" />
			<?php endif; ?>
			<?php else: ?>
			<br />
			<?php $_from = $this->_var['spec']['values']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'value');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['value']):
?>
			<label for="spec_value_<?php echo $this->_var['value']['id']; ?>">
			<input type="checkbox" name="spec_<?php echo $this->_var['spec_key']; ?>" value="<?php echo $this->_var['value']['id']; ?>" id="spec_value_<?php echo $this->_var['value']['id']; ?>" onClick="changePrice()" />
			<font style="font-size:12px;"><?php echo $this->_var['value']['label']; ?> [<?php if ($this->_var['value']['price'] > 0): ?><?php echo $this->_var['lang']['plus']; ?><?php elseif ($this->_var['value']['price'] < 0): ?><?php echo $this->_var['lang']['minus']; ?><?php endif; ?> <?php echo $this->_var['value']['format_price']; ?>]</font> </label>
			<br />
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			<input type="hidden" name="spec_list" value="<?php echo $this->_var['key']; ?>" />
			<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			
			</div>
            <div class="Goodpromotion">
            
			<font style="font-size:12px;"><?php echo $this->_var['lang']['number']; ?>：</font>
			<input name="number" type="text" id="number" value="1" size="4" onBlur="changePrice()" class="InputBorder"/>
			&nbsp;&nbsp;&nbsp;
			<font style="font-size:12px;"><?php echo $this->_var['lang']['amount']; ?>：</font><span id="ECS_GOODS_AMOUNT" class="price"></span>
			<?php if ($this->_var['goods']['is_shipping']): ?>
		  <font class="a f14b" style="font-size:12px;"><?php echo $this->_var['lang']['goods_free_shipping']; ?></font>
		  <?php endif; ?>
			<div class="blank"></div>
			<a href="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)"><img src="themes/68ecshop_xiaomifree/images/bnt_buy.gif" /></a> 
            </div>
		</form>
       
        
		</div>
     
	</div>
 
	
    

	<div class="infotit clearfix" id="com_b">
	    <h2><?php echo $this->_var['lang']['feed_goods_desc']; ?></h2>
		
        <h2 class="h2bg"><?php echo $this->_var['lang']['releate_goods']; ?></h2>
		<h2 class="h2bg">还购买过</h2>
		<h2 class="h2bg">购买记录</h2>
	</div>
	 <div class="tagcontent" id="com_v"></div>
	 <div id="com_h">
		   <blockquote>
       <table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd" class="blank" >
        <?php $_from = $this->_var['properties']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'property_group');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['property_group']):
?>
        <tr>
          <th colspan="2" bgcolor="#FFFFFF"><?php echo htmlspecialchars($this->_var['key']); ?></th>
        </tr>
        <?php $_from = $this->_var['property_group']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'property');if (count($_from)):
    foreach ($_from AS $this->_var['property']):
?>
        <tr>
          <td bgcolor="#FFFFFF" align="left" width="30%" class="f1">[<?php echo htmlspecialchars($this->_var['property']['name']); ?>]</td>
          <td bgcolor="#FFFFFF" align="left" width="70%"><?php echo $this->_var['property']['value']; ?></td>
        </tr>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
       </table>
       
        <?php echo $this->_var['goods']['goods_desc']; ?>
     
        
       </blockquote>

			 <blockquote>
			 <?php echo $this->fetch('library/goods_related.lbi'); ?>
			 </blockquote>
			 <blockquote>
			 <?php echo $this->fetch('library/bought_goods.lbi'); ?>
			 </blockquote>
			 <blockquote>
             <?php echo $this->fetch('library/bought_note_guide.lbi'); ?>
			 </blockquote>
		 </div>
	<script type="text/javascript">reg("com");</script>
	 
	 <?php echo $this->fetch('library/comments.lbi'); ?>
	 
	
</div>

<?php echo $this->fetch('library/page_footer_z.lbi'); ?>
</body>
<script type="text/javascript">
var goods_id = <?php echo $this->_var['goods_id']; ?>;
var goodsattr_style = <?php echo empty($this->_var['cfg']['goodsattr_style']) ? '1' : $this->_var['cfg']['goodsattr_style']; ?>;
var gmt_end_time = <?php echo empty($this->_var['promote_end_time']) ? '0' : $this->_var['promote_end_time']; ?>;
<?php $_from = $this->_var['lang']['goods_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
var goodsId = <?php echo $this->_var['goods_id']; ?>;
var now_time = <?php echo $this->_var['now_time']; ?>;


onload = function(){
  changePrice();
  fixpng();
  try {onload_leftTime();}
  catch (e) {}
}

/**
 * 点选可选属性或改变数量时修改商品价格的函数
 */
function changePrice()
{
  var attr = getSelectedAttributes(document.forms['ECS_FORMBUY']);
  var qty = document.forms['ECS_FORMBUY'].elements['number'].value;

  Ajax.call('goods.php', 'act=price&id=' + goodsId + '&attr=' + attr + '&number=' + qty, changePriceResponse, 'GET', 'JSON');
}

/**
 * 接收返回的信息
 */
function changePriceResponse(res)
{
  if (res.err_msg.length > 0)
  {
    alert(res.err_msg);
  }
  else
  {
    document.forms['ECS_FORMBUY'].elements['number'].value = res.qty;

    if (document.getElementById('ECS_GOODS_AMOUNT'))
      document.getElementById('ECS_GOODS_AMOUNT').innerHTML = res.result;
  }
}

</script>
</html>
