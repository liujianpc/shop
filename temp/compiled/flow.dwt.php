<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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


<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,shopping_flow.js')); ?>
<script type="text/javascript" src="themes/68ecshop_xiaomifree/js/action.js"></script>
</head>
<body>
<?php echo $this->fetch('library/page_header1.lbi'); ?>
<div class="blank"></div>


<div class="block" style="background-color:#FFFFFF; margin-bottom:10px; padding-bottom:1px; padding-top:10px;">
<div class="block2">
<?php if ($this->_var['step'] == "cart"): ?>

<div class="blank"></div>

  <?php echo $this->smarty_insert_scripts(array('files'=>'showdiv.js')); ?>
  <script type="text/javascript">
  <?php $_from = $this->_var['lang']['password_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
    var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
  </script>

<div class="goodsTitle" style="background:#f6f6f6; border:#E3E3E3 solid 1px; border-bottom:none;"><?php echo $this->_var['lang']['goods_list']; ?></div>
	<form id="formCart" name="formCart" method="post" action="flow.php">
		 <table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#e3e3e3" >
			<tr>
				<th bgcolor="#ffffff"><?php echo $this->_var['lang']['goods_name']; ?></th>
				<?php if ($this->_var['show_goods_attribute'] == 1): ?>
				<th bgcolor="#ffffff"><?php echo $this->_var['lang']['goods_attr']; ?></th>
				<?php endif; ?>
				<?php if ($this->_var['show_marketprice']): ?>
				<th bgcolor="#ffffff"><?php echo $this->_var['lang']['market_prices']; ?></th>
				<?php endif; ?>
				<th bgcolor="#ffffff"><?php echo $this->_var['lang']['shop_prices']; ?></th>
				<th bgcolor="#ffffff"><?php echo $this->_var['lang']['number']; ?></th>
				<th bgcolor="#ffffff"><?php echo $this->_var['lang']['subtotal']; ?></th>
				<th bgcolor="#ffffff"><?php echo $this->_var['lang']['handle']; ?></th>
			</tr>
			<?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
			<tr>
				<td bgcolor="#ffffff" align="center">
					<?php if ($this->_var['goods']['goods_id'] > 0 && $this->_var['goods']['extension_code'] != 'package_buy'): ?>
					<?php if ($this->_var['show_goods_thumb'] == 1): ?>
						<a href="goods.php?id=<?php echo $this->_var['goods']['goods_id']; ?>" target="_blank" class="f6"><?php echo $this->_var['goods']['goods_name']; ?></a>
					<?php elseif ($this->_var['show_goods_thumb'] == 2): ?>
						<a href="goods.php?id=<?php echo $this->_var['goods']['goods_id']; ?>" target="_blank"><img width="96px" height="131px" src="<?php echo $this->_var['goods']['goods_thumb']; ?>" border="0" title="<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>" /></a>
					<?php else: ?>
						<a href="goods.php?id=<?php echo $this->_var['goods']['goods_id']; ?>" target="_blank"><img width="96px" height="131px" src="<?php echo $this->_var['goods']['goods_thumb']; ?>" border="0" title="<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>" /></a><br />
						<a href="goods.php?id=<?php echo $this->_var['goods']['goods_id']; ?>" target="_blank"><?php echo $this->_var['goods']['goods_name']; ?></a>
					<?php endif; ?>
					<?php if ($this->_var['goods']['parent_id'] > 0): ?>
					<span style="color:#FF0000">（<?php echo $this->_var['lang']['accessories']; ?>）</span>
					<?php endif; ?>
					<?php if ($this->_var['goods']['is_gift'] > 0): ?>
					<span style="color:#FF0000">（<?php echo $this->_var['lang']['largess']; ?>）</span>
					<?php endif; ?>
					<?php elseif ($this->_var['goods']['goods_id'] > 0 && $this->_var['goods']['extension_code'] == 'package_buy'): ?>
					<a href="javascript:void(0)" onclick="setSuitShow(<?php echo $this->_var['goods']['goods_id']; ?>)" class="f6"><?php echo $this->_var['goods']['goods_name']; ?><span style="color:#FF0000;">（<?php echo $this->_var['lang']['remark_package']; ?>）</span></a> <img src="themes/68ecshop_xiaomifree/images/package.gif" />
					<div id="suit_<?php echo $this->_var['goods']['goods_id']; ?>" style="display:none;">
							<?php $_from = $this->_var['goods']['package_goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'package_goods_list');if (count($_from)):
    foreach ($_from AS $this->_var['package_goods_list']):
?>
								<a href="goods.php?id=<?php echo $this->_var['package_goods_list']['goods_id']; ?>" target="_blank" class="f6"><?php echo $this->_var['package_goods_list']['goods_name']; ?></a><br />
							<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
					</div>
				<?php else: ?>
				<?php echo $this->_var['goods']['goods_name']; ?>
				<?php endif; ?>
					</td>
				<?php if ($this->_var['show_goods_attribute'] == 1): ?>
				<td bgcolor="#ffffff"><?php echo nl2br($this->_var['goods']['goods_attr']); ?></td>
				<?php endif; ?>
				<?php if ($this->_var['show_marketprice']): ?>
				<td align="center" bgcolor="#ffffff"><?php echo $this->_var['goods']['market_price']; ?></td>
				<?php endif; ?>
				<td align="center" bgcolor="#ffffff" class="price"><?php echo $this->_var['goods']['goods_price']; ?></td>
				<td align="center" bgcolor="#ffffff">
					<?php if ($this->_var['goods']['goods_id'] > 0 && $this->_var['goods']['is_gift'] == 0 && $this->_var['goods']['parent_id'] == 0): ?>
					<input type="text" name="goods_number[<?php echo $this->_var['goods']['rec_id']; ?>]" id="goods_number_<?php echo $this->_var['goods']['rec_id']; ?>" value="<?php echo $this->_var['goods']['goods_number']; ?>" size="4" class="InputBorder"  onkeydown="showdiv(this)"/>
					<?php else: ?>
					<?php echo $this->_var['goods']['goods_number']; ?>
					<?php endif; ?>
				</td>
				<td align="center" bgcolor="#ffffff" class="price"><?php echo $this->_var['goods']['subtotal']; ?></td>
				<td align="center" bgcolor="#ffffff">
					<acronym class="delete"></acronym><a href="javascript:if (confirm('<?php echo $this->_var['lang']['drop_goods_confirm']; ?>')) location.href='flow.php?step=drop_goods&amp;id=<?php echo $this->_var['goods']['rec_id']; ?>'; " ><u class="b"><?php echo $this->_var['lang']['drop']; ?></u></a>&nbsp;&nbsp;
					<?php if ($_SESSION['user_id'] > 0): ?>
					<acronym class="start"></acronym><a href="javascript:if (confirm('您确实要把该商品加入收藏吗？')) location.href='flow.php?step=drop_to_collect&amp;id=<?php echo $this->_var['goods']['rec_id']; ?>'; " ><u class="b"><?php echo $this->_var['lang']['drop_to_collect']; ?></u></a>
					<?php endif; ?>
					</td>
			</tr>
			<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			<tr>
		</table>
		<table width="100%" align="center" border="0" cellpadding="5" cellspacing="0" bgcolor="#f9f9f9">
			<tr>
				<td class="f1 f14b">
				<?php if ($this->_var['discount'] > 0): ?><?php echo $this->_var['your_discount']; ?><br /><?php endif; ?>
				<?php echo $this->_var['shopping_money']; ?><?php if ($this->_var['show_marketprice']): ?>，<?php echo $this->_var['market_price_desc']; ?><?php endif; ?>
				</td>
				<td align="right">
					<input type="button" value="<?php echo $this->_var['lang']['clear_cart']; ?>" class="bnt_number6" onclick="location.href='flow.php?step=clear'" />
					<input name="submit" type="submit" class="bnt_number6" value="<?php echo $this->_var['lang']['update_cart']; ?>" />
				</td>
			</tr>
		</table>
		<input type="hidden" name="step" value="update_cart" />
	</form>
	<table width="99%" align="center" border="0" cellpadding="5" cellspacing="0" class="floatTable">
		<tr>
			<td align="right"><a href="./"><img src="themes/68ecshop_xiaomifree/images/continue.jpg" style="margin-right:20px;" /></a><a href="flow.php?step=checkout"><img src="themes/68ecshop_xiaomifree/images/checkout.jpg" /></a></td>
		</tr>
	</table>
 <?php if ($_SESSION['user_id'] > 0): ?>
 <?php echo $this->smarty_insert_scripts(array('files'=>'transport.js')); ?>
 <script type="text/javascript" charset="utf-8">
	function collect_to_flow(goodsId)
	{
		var goods        = new Object();
		var spec_arr     = new Array();
		var fittings_arr = new Array();
		var number       = 1;
		goods.spec     = spec_arr;
		goods.goods_id = goodsId;
		goods.number   = number;
		goods.parent   = 0;
		Ajax.call('flow.php?step=add_to_cart', 'goods=' + goods.toJSONString(), collect_to_flow_response, 'POST', 'JSON');
	}
	function collect_to_flow_response(result)
        {
          if (result.error > 0)
          {
            // 如果需要缺货登记，跳转
            if (result.error == 2)
            {
              if (confirm(result.message))
              {
                location.href = 'user.php?act=add_booking&id=' + result.goods_id;
              }
            }
            else if (result.error == 6)
            {
              openSpeDiv(result.message, result.goods_id);
            }
            else
            {
              alert(result.message);
            }
          }
          else
          {
            location.href = 'flow.php';
          }
        }
</script>

<?php endif; ?>
<?php endif; ?>

<?php if ($this->_var['collection_goods']): ?>
<div class="goodsTitle"><?php echo $this->_var['lang']['label_collection']; ?></div>
 <table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#e3e3e3" class="floatTable">
	<?php $_from = $this->_var['collection_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
			<tr>
				<td bgcolor="#ffffff"><a href="goods.php?id=<?php echo $this->_var['goods']['goods_id']; ?>"><?php echo $this->_var['goods']['goods_name']; ?></a></td>
				<td bgcolor="#ffffff" align="center" width="100"><a href="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)">加入购物车</a></td>
			</tr>
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		</table>
<?php endif; ?>


<?php if ($this->_var['fittings_list']): ?>
<?php echo $this->smarty_insert_scripts(array('files'=>'transport.js')); ?>
  <script type="text/javascript" charset="utf-8">
  function fittings_to_flow(goodsId,parentId)
  {
    var goods        = new Object();
    var spec_arr     = new Array();
    var number       = 1;
    goods.spec     = spec_arr;
    goods.goods_id = goodsId;
    goods.number   = number;
    goods.parent   = parentId;
    Ajax.call('flow.php?step=add_to_cart', 'goods=' + goods.toJSONString(), fittings_to_flow_response, 'POST', 'JSON');
  }
	function fittings_to_flow_response(result)
  {
    if (result.error > 0)
    {
      // 如果需要缺货登记，跳转
      if (result.error == 2)
      {
        if (confirm(result.message))
        {
          location.href = 'user.php?act=add_booking&id=' + result.goods_id;
        }
      }
      else if (result.error == 6)
      {
        openSpeDiv(result.message, result.goods_id, result.parent);
      }
      else
      {
        alert(result.message);
      }
    }
    else
    {
      location.href = 'flow.php';
    }
  }
  </script>
<div class="goodsTitle"><?php echo $this->_var['lang']['goods_fittings']; ?></div>
 <form action="flow.php" method="post">
		<div class="clearfix floatTable" style="padding-top:10px;">
			<?php $_from = $this->_var['fittings_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'fittings');if (count($_from)):
    foreach ($_from AS $this->_var['fittings']):
?>
			 <div class="goodsbox">
				<div class="imgbox"><a href="<?php echo $this->_var['fittings']['url']; ?>" target="_blank"><img src="<?php echo $this->_var['fittings']['goods_thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['fittings']['name']); ?>" class="B_blue" /></a></div>
				<a href="<?php echo $this->_var['fittings']['url']; ?>" target="_blank" title="<?php echo htmlspecialchars($this->_var['fittings']['goods_name']); ?>"><?php echo htmlspecialchars($this->_var['fittings']['short_name']); ?></a><br />
				<?php echo $this->_var['lang']['fittings_price']; ?><font class="f1"><?php echo $this->_var['fittings']['fittings_price']; ?></font><br />
				<?php echo $this->_var['lang']['parent_name']; ?><?php echo $this->_var['fittings']['parent_short_name']; ?><br />
				<a href="javascript:fittings_to_flow(<?php echo $this->_var['fittings']['goods_id']; ?>,<?php echo $this->_var['fittings']['parent_id']; ?>)"><acronym class="addToCart">加入购物车</acronym></a>
			</div>
		 <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		</div>
 </form>
<?php endif; ?>


<?php if ($this->_var['favourable_list']): ?>
<div class="goodsTitle"><?php echo $this->_var['lang']['label_favourable']; ?></div>
	<?php $_from = $this->_var['favourable_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'favourable');if (count($_from)):
    foreach ($_from AS $this->_var['favourable']):
?>
	<form action="flow.php" method="post" class="floatTable clearfix">
		<table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#e3e3e3">
			<tr>
				<td align="center" bgcolor="#ffffff"><?php echo $this->_var['lang']['favourable_name']; ?></td>
				<td bgcolor="#ffffff"><strong><?php echo $this->_var['favourable']['act_name']; ?></strong></td>
			</tr>
			<tr>
				<td align="center" bgcolor="#ffffff"><?php echo $this->_var['lang']['favourable_period']; ?></td>
				<td bgcolor="#ffffff" class="f1"><?php echo $this->_var['favourable']['start_time']; ?> --- <?php echo $this->_var['favourable']['end_time']; ?></td>
			</tr>
			<tr>
				<td align="center" bgcolor="#ffffff"><?php echo $this->_var['lang']['favourable_range']; ?></td>
				<td bgcolor="#ffffff"><?php echo $this->_var['lang']['far_ext'][$this->_var['favourable']['act_range']]; ?><br />
				<?php echo $this->_var['favourable']['act_range_desc']; ?></td>
			</tr>
			<tr>
				<td align="center" bgcolor="#ffffff"><?php echo $this->_var['lang']['favourable_amount']; ?></td>
				<td bgcolor="#ffffff" class="f1"><?php echo $this->_var['favourable']['formated_min_amount']; ?> --- <?php echo $this->_var['favourable']['formated_max_amount']; ?></td>
			</tr>
			<tr>
				<td align="center" bgcolor="#ffffff"><?php echo $this->_var['lang']['favourable_type']; ?></td>
				<td bgcolor="#ffffff">
					<span class="STYLE1"><?php echo $this->_var['favourable']['act_type_desc']; ?></span>
					<?php if ($this->_var['favourable']['act_type'] == 0): ?>
					<?php $_from = $this->_var['favourable']['gift']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'gift');if (count($_from)):
    foreach ($_from AS $this->_var['gift']):
?><br />
						<input type="checkbox" value="<?php echo $this->_var['gift']['id']; ?>" name="gift[]" />
						<a href="goods.php?id=<?php echo $this->_var['gift']['id']; ?>" target="_blank"><?php echo $this->_var['gift']['name']; ?></a> <font class="f1">[<?php echo $this->_var['gift']['formated_price']; ?>]</font>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
				<?php endif; ?>
				</td>
			</tr>
			<?php if ($this->_var['favourable']['available']): ?>
			<tr>
				<td align="center" bgcolor="#ffffff">&nbsp;</td>
				<td align="center" bgcolor="#ffffff">
				<input type="submit" class="bnt_number4" value="立即购买" /></td>
			</tr>
			<?php endif; ?>
		</table>
		<input type="hidden" name="act_id" value="<?php echo $this->_var['favourable']['act_id']; ?>" />
		<input type="hidden" name="step" value="add_favourable" />
	</form>
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
<?php endif; ?>


<?php if ($this->_var['step'] == "consignee"): ?>

<div class="blank"></div>
<?php echo $this->smarty_insert_scripts(array('files'=>'region.js,utils.js')); ?>
<script type="text/javascript">
	region.isAdmin = false;
	<?php $_from = $this->_var['lang']['flow_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
	var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>

	
	onload = function() {
		if (!document.all)
		{
			document.forms['theForm'].reset();
		}
	}
	
</script>

<?php $_from = $this->_var['consignee_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('sn', 'consignee');if (count($_from)):
    foreach ($_from AS $this->_var['sn'] => $this->_var['consignee']):
?>
<form action="flow.php" method="post" name="theForm" id="theForm" onsubmit="return checkConsignee(this)">
<?php echo $this->fetch('library/consignee.lbi'); ?>
</form>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
<?php endif; ?>

<?php if ($this->_var['step'] == "checkout"): ?>
<div class="blank"></div>
<form action="flow.php" method="post" name="theForm" id="theForm" onsubmit="return checkOrderForm(this)">
<script type="text/javascript">
var flow_no_payment = "<?php echo $this->_var['lang']['flow_no_payment']; ?>";
var flow_no_shipping = "<?php echo $this->_var['lang']['flow_no_shipping']; ?>";
</script>
<div class="goodsTitle clearfix" style="background:#f6f6f6; border:#E3E3E3 solid 1px; border-bottom:none;">
<span class="fl"><?php echo $this->_var['lang']['goods_list']; ?></span><?php if ($this->_var['allow_edit_cart']): ?><a href="flow.php" class="fr"><?php echo $this->_var['lang']['modify']; ?></a><?php endif; ?>
</div>
<table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#e3e3e3" class="floatTable">
		<tr>
			<th bgcolor="#ffffff"><?php echo $this->_var['lang']['goods_name']; ?></th>
			<th bgcolor="#ffffff"><?php echo $this->_var['lang']['goods_attr']; ?></th>
			<?php if ($this->_var['show_marketprice']): ?>
			<th bgcolor="#ffffff"><?php echo $this->_var['lang']['market_prices']; ?></th>
			<?php endif; ?>
			<th bgcolor="#ffffff"><?php if ($this->_var['gb_deposit']): ?><?php echo $this->_var['lang']['deposit']; ?><?php else: ?><?php echo $this->_var['lang']['shop_prices']; ?><?php endif; ?></th>
			<th bgcolor="#ffffff"><?php echo $this->_var['lang']['number']; ?></th>
			<th bgcolor="#ffffff"><?php echo $this->_var['lang']['subtotal']; ?></th>
		</tr>
		<?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?>
		<tr>
			<td bgcolor="#ffffff">
				<?php if ($this->_var['goods']['goods_id'] > 0 && $this->_var['goods']['extension_code'] == 'package_buy'): ?>
				<a href="javascript:void(0)" onclick="setSuitShow(<?php echo $this->_var['goods']['goods_id']; ?>)"><?php echo $this->_var['goods']['goods_name']; ?><span style="color:#FF0000;">（<?php echo $this->_var['lang']['remark_package']; ?>）</span></a>
				<div id="suit_<?php echo $this->_var['goods']['goods_id']; ?>" style="display:none">
						<?php $_from = $this->_var['goods']['package_goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'package_goods_list');if (count($_from)):
    foreach ($_from AS $this->_var['package_goods_list']):
?>
				<a href="goods.php?id=<?php echo $this->_var['package_goods_list']['goods_id']; ?>" target="_blank"><?php echo $this->_var['package_goods_list']['goods_name']; ?></a><br />
						<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
				</div>
			<?php else: ?>
				<a href="goods.php?id=<?php echo $this->_var['goods']['goods_id']; ?>" target="_blank"><?php echo $this->_var['goods']['goods_name']; ?></a>
					<?php if ($this->_var['goods']['parent_id'] > 0): ?>
					<span style="color:#FF0000">（<?php echo $this->_var['lang']['accessories']; ?>）</span>
					<?php elseif ($this->_var['goods']['is_gift']): ?>
					<span style="color:#FF0000">（<?php echo $this->_var['lang']['largess']; ?>）</span>
					<?php endif; ?>
			<?php endif; ?>
			<?php if ($this->_var['goods']['is_shipping']): ?>(<span style="color:#FF0000"><?php echo $this->_var['lang']['free_goods']; ?></span>)<?php endif; ?>
			</td>
			<td bgcolor="#ffffff"><?php echo nl2br($this->_var['goods']['goods_attr']); ?></td>
			<?php if ($this->_var['show_marketprice']): ?>
			<td align="center" bgcolor="#ffffff"><?php echo $this->_var['goods']['formated_market_price']; ?></td>
			<?php endif; ?>
			<td bgcolor="#ffffff" align="center"  class="price"><?php echo $this->_var['goods']['formated_goods_price']; ?></td>
			<td bgcolor="#ffffff" align="center"><?php echo $this->_var['goods']['goods_number']; ?></td>
			<td bgcolor="#ffffff" align="center"  class="price"><?php echo $this->_var['goods']['formated_subtotal']; ?></td>
		</tr>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		<?php if (! $this->_var['gb_deposit']): ?>
		<tr>
			<td bgcolor="#ffffff" colspan="7" class="f1 f14b" style="text-align:right;">
			<?php if ($this->_var['discount'] > 0): ?><?php echo $this->_var['your_discount']; ?><br /><?php endif; ?>
			<?php echo $this->_var['shopping_money']; ?><?php if ($this->_var['show_marketprice']): ?>，<?php echo $this->_var['market_price_desc']; ?><?php endif; ?>
			</td>
		</tr>
		<?php endif; ?>
	</table>


<div class="goodsTitle clearfix" style="background:#f6f6f6; border:#E3E3E3 solid 1px; border-bottom:none;">
<span class="fl" ><?php echo $this->_var['lang']['consignee_info']; ?></span><a href="flow.php?step=consignee" class="fr f1"><?php echo $this->_var['lang']['modify']; ?></a>
</div>
<table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#e3e3e3" class="floatTable">
		<tr>
			<td bgcolor="#ffffff"><?php echo $this->_var['lang']['consignee_name']; ?>:</td>
			<td bgcolor="#ffffff"><?php echo htmlspecialchars($this->_var['consignee']['consignee']); ?></td>
			<td bgcolor="#ffffff"><?php echo $this->_var['lang']['email_address']; ?>:</td>
			<td bgcolor="#ffffff"><?php echo htmlspecialchars($this->_var['consignee']['email']); ?></td>
		</tr>
		<?php if ($this->_var['total']['real_goods_count'] > 0): ?>
		<tr>
			<td bgcolor="#ffffff"><?php echo $this->_var['lang']['detailed_address']; ?>:</td>
			<td bgcolor="#ffffff"><?php echo htmlspecialchars($this->_var['consignee']['address']); ?> </td>
			<td bgcolor="#ffffff"><?php echo $this->_var['lang']['postalcode']; ?>:</td>
			<td bgcolor="#ffffff"><?php echo htmlspecialchars($this->_var['consignee']['zipcode']); ?></td>
		</tr>
		<?php endif; ?>
		<tr>
			<td bgcolor="#ffffff"><?php echo $this->_var['lang']['phone']; ?>:</td>
			<td bgcolor="#ffffff"><?php echo $this->_var['consignee']['tel']; ?> </td>
			<td bgcolor="#ffffff"><?php echo $this->_var['lang']['backup_phone']; ?>:</td>
			<td bgcolor="#ffffff"><?php echo htmlspecialchars($this->_var['consignee']['mobile']); ?></td>
		</tr>
		 <?php if ($this->_var['total']['real_goods_count'] > 0): ?>
		<tr>
			<td bgcolor="#ffffff"><?php echo $this->_var['lang']['sign_building']; ?>:</td>
			<td bgcolor="#ffffff"><?php echo htmlspecialchars($this->_var['consignee']['sign_building']); ?> </td>
			<td bgcolor="#ffffff"><?php echo $this->_var['lang']['deliver_goods_time']; ?>:</td>
			<td bgcolor="#ffffff"><?php echo htmlspecialchars($this->_var['consignee']['best_time']); ?></td>
		</tr>
		<?php endif; ?>
	</table>


<?php if ($this->_var['total']['real_goods_count'] != 0): ?>
<div class="goodsTitle" style="background:#f6f6f6; border:#E3E3E3 solid 1px; border-bottom:none;"><?php echo $this->_var['lang']['shipping_method']; ?></div>
<table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#e3e3e3" class="floatTable" id="shippingTable">
		<tr>
			<th bgcolor="#ffffff" width="5%">&nbsp;</th>
			<th bgcolor="#ffffff" width="25%"><?php echo $this->_var['lang']['name']; ?></th>
			<th bgcolor="#ffffff"><?php echo $this->_var['lang']['describe']; ?></th>
			<th bgcolor="#ffffff" width="15%"><?php echo $this->_var['lang']['fee']; ?></th>
			<th bgcolor="#ffffff" width="15%"><?php echo $this->_var['lang']['free_money']; ?></th>
			<th bgcolor="#ffffff" width="15%"><?php echo $this->_var['lang']['insure_fee']; ?></th>
		</tr>
		<?php $_from = $this->_var['shipping_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'shipping');if (count($_from)):
    foreach ($_from AS $this->_var['shipping']):
?>
		<tr>
			<td bgcolor="#ffffff" valign="top"><input name="shipping" type="radio" value="<?php echo $this->_var['shipping']['shipping_id']; ?>" <?php if ($this->_var['order']['shipping_id'] == $this->_var['shipping']['shipping_id']): ?>checked="true"<?php endif; ?> supportCod="<?php echo $this->_var['shipping']['support_cod']; ?>" insure="<?php echo $this->_var['shipping']['insure']; ?>" onclick="selectShipping(this)" />
			</td>
			<td bgcolor="#ffffff" valign="top"><strong><?php echo $this->_var['shipping']['shipping_name']; ?></strong></td>
			<td bgcolor="#ffffff" valign="top"><?php echo $this->_var['shipping']['shipping_desc']; ?></td>
			<td bgcolor="#ffffff" align="center" valign="top" class="f1"><?php echo $this->_var['shipping']['format_shipping_fee']; ?></td>
			<td bgcolor="#ffffff" align="center" valign="top" class="f1"><?php echo $this->_var['shipping']['free_money']; ?></td>
			<td bgcolor="#ffffff" align="center" valign="top"><?php if ($this->_var['shipping']['insure'] != 0): ?><?php echo $this->_var['shipping']['insure_formated']; ?><?php else: ?><?php echo $this->_var['lang']['not_support_insure']; ?><?php endif; ?></td>
		</tr>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		<tr>
			<td colspan="6" bgcolor="#ffffff" align="right"><label for="ECS_NEEDINSURE">
				<input name="need_insure" id="ECS_NEEDINSURE" type="checkbox"  onclick="selectInsure(this.checked)" value="1" <?php if ($this->_var['order']['need_insure']): ?>checked="true"<?php endif; ?> <?php if ($this->_var['insure_disabled']): ?>disabled="true"<?php endif; ?>  />
				<?php echo $this->_var['lang']['need_insure']; ?> </label></td>
		</tr>
	</table>
<?php else: ?>
<input name = "shipping" type="radio" value = "-1" checked="checked"  style="display:none"/>
<?php endif; ?>

<?php if ($this->_var['is_exchange_goods'] != 1 || $this->_var['total']['real_goods_count'] != 0): ?>
<div class="goodsTitle" style="background:#f6f6f6; border:#E3E3E3 solid 1px; border-bottom:none;"><?php echo $this->_var['lang']['payment_method']; ?></div>
<table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#e3e3e3" class="floatTable" id="paymentTable">
		<tr>
			<th width="5%" bgcolor="#ffffff">&nbsp;</th>
			<th width="20%" bgcolor="#ffffff"><?php echo $this->_var['lang']['name']; ?></th>
			<th bgcolor="#ffffff"><?php echo $this->_var['lang']['describe']; ?></th>
			<th bgcolor="#ffffff" width="15%"><?php echo $this->_var['lang']['pay_fee']; ?></th>
		</tr>
		<?php $_from = $this->_var['payment_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'payment');if (count($_from)):
    foreach ($_from AS $this->_var['payment']):
?>
		
		<tr>
			<td valign="top" bgcolor="#ffffff"><input type="radio" name="payment" value="<?php echo $this->_var['payment']['pay_id']; ?>" <?php if ($this->_var['order']['pay_id'] == $this->_var['payment']['pay_id']): ?>checked<?php endif; ?> isCod="<?php echo $this->_var['payment']['is_cod']; ?>" onclick="selectPayment(this)" <?php if ($this->_var['cod_disabled'] && $this->_var['payment']['is_cod'] == "1"): ?>disabled="true"<?php endif; ?>/></td>
			<td valign="top" bgcolor="#ffffff"><strong><?php echo $this->_var['payment']['pay_name']; ?></strong></td>
			<td valign="top" bgcolor="#ffffff"><?php echo $this->_var['payment']['pay_desc']; ?></td>
			<td align="center" bgcolor="#ffffff" valign="top" class="f1"><?php echo $this->_var['payment']['format_pay_fee']; ?></td>
		</tr>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	</table>
<?php else: ?>
 <input name = "payment" type="radio" value = "-1" checked="checked"  style="display:none"/>
<?php endif; ?>

<?php if ($this->_var['pack_list']): ?>
<div class="goodsTitle" style="background:#f6f6f6; border:#E3E3E3 solid 1px; border-bottom:none;"><?php echo $this->_var['lang']['goods_package']; ?></div>
	<table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#e3e3e3" class="floatTable" id="packTable">
		<tr>
			<th width="5%" scope="col" bgcolor="#ffffff">&nbsp;</th>
			<th width="35%" scope="col" bgcolor="#ffffff"><?php echo $this->_var['lang']['name']; ?></th>
			<th width="22%" scope="col" bgcolor="#ffffff"><?php echo $this->_var['lang']['price']; ?></th>
			<th width="22%" scope="col" bgcolor="#ffffff"><?php echo $this->_var['lang']['free_money']; ?></th>
			<th scope="col" bgcolor="#ffffff"><?php echo $this->_var['lang']['img']; ?></th>
		</tr>
		<tr>
			<td valign="top" bgcolor="#ffffff"><input type="radio" name="pack" value="0" <?php if ($this->_var['order']['pack_id'] == 0): ?>checked="true"<?php endif; ?> onclick="selectPack(this)" /></td>
			<td valign="top" bgcolor="#ffffff"><strong><?php echo $this->_var['lang']['no_pack']; ?></strong></td>
			<td valign="top" bgcolor="#ffffff">&nbsp;</td>
			<td valign="top" bgcolor="#ffffff">&nbsp;</td>
			<td valign="top" bgcolor="#ffffff">&nbsp;</td>
		</tr>
		<?php $_from = $this->_var['pack_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'pack');if (count($_from)):
    foreach ($_from AS $this->_var['pack']):
?>
		<tr>
			<td valign="top" bgcolor="#ffffff"><input type="radio" name="pack" value="<?php echo $this->_var['pack']['pack_id']; ?>" <?php if ($this->_var['order']['pack_id'] == $this->_var['pack']['pack_id']): ?>checked="true"<?php endif; ?> onclick="selectPack(this)" />
			</td>
			<td valign="top" bgcolor="#ffffff"><strong><?php echo $this->_var['pack']['pack_name']; ?></strong></td>
			<td valign="top" bgcolor="#ffffff" align="center" class="f1"><?php echo $this->_var['pack']['format_pack_fee']; ?></td>
			<td valign="top" bgcolor="#ffffff" align="center" class="f1"><?php echo $this->_var['pack']['format_free_money']; ?></td>
			<td valign="top" bgcolor="#ffffff" align="center">
					<?php if ($this->_var['pack']['pack_img']): ?>
					<a href="data/packimg/<?php echo $this->_var['pack']['pack_img']; ?>" target="_blank"><?php echo $this->_var['lang']['view']; ?></a>
					<?php else: ?>
					<?php echo $this->_var['lang']['no']; ?>
					<?php endif; ?>
			 </td>
		</tr>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	</table>
<?php endif; ?>

<?php if ($this->_var['card_list']): ?>
<div class="goodsTitle" style="background:#f6f6f6; border:#E3E3E3 solid 1px; border-bottom:none;"><?php echo $this->_var['lang']['goods_card']; ?></div>
	<table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#e3e3e3" class="floatTable" id="cardTable">
		<tr>
			<th bgcolor="#ffffff" width="5%" scope="col">&nbsp;</th>
			<th bgcolor="#ffffff" width="35%" scope="col"><?php echo $this->_var['lang']['name']; ?></th>
			<th bgcolor="#ffffff" width="22%" scope="col"><?php echo $this->_var['lang']['price']; ?></th>
			<th bgcolor="#ffffff" width="22%" scope="col"><?php echo $this->_var['lang']['free_money']; ?></th>
			<th bgcolor="#ffffff" scope="col"><?php echo $this->_var['lang']['img']; ?></th>
		</tr>
		<tr>
			<td bgcolor="#ffffff" valign="top"><input type="radio" name="card" value="0" <?php if ($this->_var['order']['card_id'] == 0): ?>checked="true"<?php endif; ?> onclick="selectCard(this)" /></td>
			<td bgcolor="#ffffff" valign="top"><strong><?php echo $this->_var['lang']['no_card']; ?></strong></td>
			<td bgcolor="#ffffff" valign="top">&nbsp;</td>
			<td bgcolor="#ffffff" valign="top">&nbsp;</td>
			<td bgcolor="#ffffff" valign="top">&nbsp;</td>
		</tr>
		<?php $_from = $this->_var['card_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'card');if (count($_from)):
    foreach ($_from AS $this->_var['card']):
?>
		<tr>
			<td valign="top" bgcolor="#ffffff"><input type="radio" name="card" value="<?php echo $this->_var['card']['card_id']; ?>" <?php if ($this->_var['order']['card_id'] == $this->_var['card']['card_id']): ?>checked="true"<?php endif; ?> onclick="selectCard(this)"  />
			</td>
			<td valign="top" bgcolor="#ffffff"><strong><?php echo $this->_var['card']['card_name']; ?></strong></td>
			<td valign="top" align="center" bgcolor="#ffffff" class="f1"><?php echo $this->_var['card']['format_card_fee']; ?></td>
			<td valign="top" align="center" bgcolor="#ffffff" class="f1"><?php echo $this->_var['card']['format_free_money']; ?></td>
			<td valign="top" align="center" bgcolor="#ffffff">
					<?php if ($this->_var['card']['card_img']): ?>
					<a href="data/cardimg/<?php echo $this->_var['card']['card_img']; ?>" target="_blank"><?php echo $this->_var['lang']['view']; ?></a>
					<?php else: ?>
					<?php echo $this->_var['lang']['no']; ?>
					<?php endif; ?>
				</td>
		</tr>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
		<tr>
			<td bgcolor="#ffffff"></td>
			<td bgcolor="#ffffff" valign="top"><strong><?php echo $this->_var['lang']['bless_note']; ?>:</strong></td>
			<td bgcolor="#ffffff" colspan="3"><textarea name="card_message" cols="60" rows="3"  class="InputBorder"><?php echo htmlspecialchars($this->_var['order']['card_message']); ?></textarea></td>
		</tr>
	</table>
<?php endif; ?>

<div class="goodsTitle" style="background:#f6f6f6; border:#E3E3E3 solid 1px; border-bottom:none;"><?php echo $this->_var['lang']['other_info']; ?></div>
<table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#e3e3e3" class="floatTable">
		<?php if ($this->_var['allow_use_surplus']): ?>
		<tr>
			<td width="20%" bgcolor="#ffffff"><strong><?php echo $this->_var['lang']['use_surplus']; ?>: </strong></td>
			<td bgcolor="#ffffff"><input name="surplus" type="text"  class="InputBorder" id="ECS_SURPLUS" size="10" value="<?php echo empty($this->_var['order']['surplus']) ? '0' : $this->_var['order']['surplus']; ?>" onblur="changeSurplus(this.value)" <?php if ($this->_var['disable_surplus']): ?>disabled="disabled"<?php endif; ?> />
			<?php echo $this->_var['lang']['your_surplus']; ?><?php echo empty($this->_var['your_surplus']) ? '0' : $this->_var['your_surplus']; ?> <span id="ECS_SURPLUS_NOTICE" class="notice"></span></td>
		</tr>
		<?php endif; ?>
		<?php if ($this->_var['allow_use_integral']): ?>
		<tr>
			<td bgcolor="#ffffff"><strong><?php echo $this->_var['lang']['use_integral']; ?></strong></td>
			<td bgcolor="#ffffff"><input name="integral" type="text"  class="InputBorder" id="ECS_INTEGRAL" onblur="changeIntegral(this.value)" value="<?php echo empty($this->_var['order']['integral']) ? '0' : $this->_var['order']['integral']; ?>" size="10" />
			<?php echo $this->_var['lang']['can_use_integral']; ?>:<?php echo empty($this->_var['your_integral']) ? '0' : $this->_var['your_integral']; ?> <?php echo $this->_var['points_name']; ?>，<?php echo $this->_var['lang']['noworder_can_integral']; ?><?php echo $this->_var['order_max_integral']; ?>  <?php echo $this->_var['points_name']; ?>. <span id="ECS_INTEGRAL_NOTICE" class="notice"></span></td>
		</tr>
		<?php endif; ?>
		<?php if ($this->_var['allow_use_bonus']): ?>
		<tr>
			<td bgcolor="#ffffff"><strong><?php echo $this->_var['lang']['use_bonus']; ?>:</strong></td>
			<td bgcolor="#ffffff">
				<?php echo $this->_var['lang']['select_bonus']; ?>
				<select name="bonus" onchange="changeBonus(this.value)" id="ECS_BONUS"  class="InputBorder">
					<option value="0" <?php if ($this->_var['order']['bonus_id'] == 0): ?>selected<?php endif; ?>><?php echo $this->_var['lang']['please_select']; ?></option>
					<?php $_from = $this->_var['bonus_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'bonus');if (count($_from)):
    foreach ($_from AS $this->_var['bonus']):
?>
					<option value="<?php echo $this->_var['bonus']['bonus_id']; ?>" <?php if ($this->_var['order']['bonus_id'] == $this->_var['bonus']['bonus_id']): ?>selected<?php endif; ?>><?php echo $this->_var['bonus']['type_name']; ?>[<?php echo $this->_var['bonus']['bonus_money_formated']; ?>]</option>
					<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
				</select>

				<?php echo $this->_var['lang']['input_bonus_no']; ?>
				<input name="bonus_sn" type="text"  class="InputBorder" size="15" value="<?php echo $this->_var['order']['bonus_sn']; ?>" />
				<input name="validate_bonus" type="button" class="bnt_number4" value="<?php echo $this->_var['lang']['validate_bonus']; ?>" onclick="validateBonus(document.forms['theForm'].elements['bonus_sn'].value)" style="vertical-align:bottom;" />
			</td>
		</tr>
		<?php endif; ?>
		<?php if ($this->_var['inv_content_list']): ?>
		<tr>
			<td bgcolor="#ffffff"><strong><?php echo $this->_var['lang']['invoice']; ?>:</strong>
				<input name="need_inv" type="checkbox"  class="input" id="ECS_NEEDINV" onclick="changeNeedInv()" value="1" <?php if ($this->_var['order']['need_inv']): ?>checked="true"<?php endif; ?> />
			</td>
			<td bgcolor="#ffffff">
				<?php if ($this->_var['inv_type_list']): ?>
				<?php echo $this->_var['lang']['invoice_type']; ?>
				<select name="inv_type" id="ECS_INVTYPE" <?php if ($this->_var['order']['need_inv'] != 1): ?>disabled="true"<?php endif; ?> onchange="changeNeedInv()"  class="InputBorder">
				<?php echo $this->html_options(array('options'=>$this->_var['inv_type_list'],'selected'=>$this->_var['order']['inv_type'])); ?></select>
				<?php endif; ?>
				<?php echo $this->_var['lang']['invoice_title']; ?>
				<input name="inv_payee" type="text"  class="InputBorder" id="ECS_INVPAYEE" size="20" <?php if (! $this->_var['order']['need_inv']): ?>disabled="true"<?php endif; ?> value="<?php echo $this->_var['order']['inv_payee']; ?>" onblur="changeNeedInv()" />
				<?php echo $this->_var['lang']['invoice_content']; ?>
			<select name="inv_content" id="ECS_INVCONTENT" <?php if ($this->_var['order']['need_inv'] != 1): ?>disabled="true"<?php endif; ?>  onchange="changeNeedInv()"  class="InputBorder">

				<?php echo $this->html_options(array('values'=>$this->_var['inv_content_list'],'output'=>$this->_var['inv_content_list'],'selected'=>$this->_var['order']['inv_content'])); ?>

				</select>
				</td>
		</tr>
		<?php endif; ?>
		<tr>
			<td valign="top" bgcolor="#ffffff"><strong><?php echo $this->_var['lang']['order_postscript']; ?>:</strong></td>
			<td bgcolor="#ffffff"><textarea name="postscript" cols="80" rows="3" id="postscript" class="InputBorder"><?php echo htmlspecialchars($this->_var['order']['postscript']); ?></textarea></td>
		</tr>
		<?php if ($this->_var['how_oos_list']): ?>
		<tr>
			<td bgcolor="#ffffff"><strong><?php echo $this->_var['lang']['booking_process']; ?>:</strong></td>
			<td bgcolor="#ffffff"><?php $_from = $this->_var['how_oos_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('how_oos_id', 'how_oos_name');if (count($_from)):
    foreach ($_from AS $this->_var['how_oos_id'] => $this->_var['how_oos_name']):
?>
				<label>
				<input name="how_oos" type="radio" value="<?php echo $this->_var['how_oos_id']; ?>" <?php if ($this->_var['order']['how_oos'] == $this->_var['how_oos_id']): ?>checked<?php endif; ?> onclick="changeOOS(this)" />
				<?php echo $this->_var['how_oos_name']; ?></label>
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			</td>
		</tr>
		<?php endif; ?>
	</table>

<div class="goodsTitle" style="background:#f6f6f6; border:#E3E3E3 solid 1px; border-bottom:none;"><?php echo $this->_var['lang']['fee_total']; ?></div>
	<?php echo $this->fetch('library/order_total.lbi'); ?>
	 <div align="center" style="margin:8px auto;">
		<input type="image" src="themes/68ecshop_xiaomifree/images/bnt_subOrder.gif" />
		<input type="hidden" name="step" value="done" />
   </div>
</form>
<?php endif; ?>

<?php if ($this->_var['step'] == "done"): ?>
<div class="blank"></div>

<div class="orderSuccess">
 <div class="order_sn tc"><?php echo $this->_var['lang']['remember_order_number']; ?>：<font class="a"><?php echo $this->_var['order']['order_sn']; ?></font></div>
 <div class="shipping_name">
  <?php if ($this->_var['order']['shipping_name']): ?>
	<?php echo $this->_var['lang']['select_shipping']; ?>： <strong><?php echo $this->_var['order']['shipping_name']; ?></strong><br />
	<?php endif; ?>
	<?php echo $this->_var['lang']['select_payment']; ?>： <strong><?php echo $this->_var['order']['pay_name']; ?></strong>。<br />
	<?php echo $this->_var['lang']['order_amount']; ?>： <strong class="f1"><?php echo $this->_var['total']['amount_formated']; ?></strong><br />
	&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $this->_var['order']['pay_desc']; ?><br />
	<?php if ($this->_var['pay_online']): ?>
   <?php echo $this->_var['pay_online']; ?>
 <?php endif; ?>
 </div>
 <?php if ($this->_var['virtual_card']): ?>
 <div class="shipping_name">
 <?php $_from = $this->_var['virtual_card']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'vgoods');if (count($_from)):
    foreach ($_from AS $this->_var['vgoods']):
?>
	<font class="f14b"><?php echo $this->_var['vgoods']['goods_name']; ?></font><br />
		<?php $_from = $this->_var['vgoods']['info']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'card');if (count($_from)):
    foreach ($_from AS $this->_var['card']):
?>
			<?php if ($this->_var['card']['card_sn']): ?>
			<strong><?php echo $this->_var['lang']['card_sn']; ?>：</strong><font class="f1"><?php echo $this->_var['card']['card_sn']; ?></font><br />
			<?php endif; ?>
			<?php if ($this->_var['card']['card_password']): ?>
			<strong><?php echo $this->_var['lang']['card_password']; ?>：</strong><font class="f1"><?php echo $this->_var['card']['card_password']; ?></font><br />
			<?php endif; ?>
			<?php if ($this->_var['card']['end_date']): ?>
			<strong><?php echo $this->_var['lang']['end_date']; ?>：</strong><?php echo $this->_var['card']['end_date']; ?><br />
			<?php endif; ?>
		<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
 </div>
 <?php endif; ?>
	<p>现在，<?php echo $this->_var['order_submit_back']; ?></p>
</div>
<?php endif; ?>


<?php if ($this->_var['step'] == "login"): ?>
<div class="blank"></div>
<?php echo $this->smarty_insert_scripts(array('files'=>'utils.js,user.js')); ?>
<script type="text/javascript">
<?php $_from = $this->_var['lang']['flow_login_register']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
	var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>


function checkLoginForm(frm) {
	if (Utils.isEmpty(frm.elements['username'].value)) {
		alert(username_not_null);
		return false;
	}

	if (Utils.isEmpty(frm.elements['password'].value)) {
		alert(password_not_null);
		return false;
	}

	return true;
}

function checkSignupForm(frm) {
	if (Utils.isEmpty(frm.elements['username'].value)) {
		alert(username_not_null);
		return false;
	}

	if (Utils.trim(frm.elements['username'].value).match(/^\s*$|^c:\\con\\con$|[%,\'\*\"\s\t\<\>\&\\]/))
	{
		alert(username_invalid);
		return false;
	}

	if (Utils.isEmpty(frm.elements['email'].value)) {
		alert(email_not_null);
		return false;
	}

	if (!Utils.isEmail(frm.elements['email'].value)) {
		alert(email_invalid);
		return false;
	}

	if (Utils.isEmpty(frm.elements['password'].value)) {
		alert(password_not_null);
		return false;
	}

	if (frm.elements['password'].value.length < 6) {
		alert(password_lt_six);
		return false;
	}

	if (frm.elements['password'].value != frm.elements['confirm_password'].value) {
		alert(password_not_same);
		return false;
	}
	return true;
}

</script>


  <div class="clearfix" style="margin-bottom:10px;" >
  
   <div class="step_login fl">
    <div class="login_tit blank" style="margin-top:15px;"><strong style="font-size:18px;">登录</strong> &nbsp;&nbsp;&nbsp;&nbsp;已经注册，请在此登录</div>
    <form action="flow.php?step=login" method="post" name="loginForm" id="loginForm" onsubmit="return checkLoginForm(this)">
      <table width="100%" border="0" cellpadding="5" cellspacing="0">
            <tr>
              <td width="30%" align="right" bgcolor="#ffffff"><?php echo $this->_var['lang']['username']; ?></td>
              <td width="70%" bgcolor="#ffffff"><input name="username" type="text" class="InputBorder inputBg" id="username" /></td>
            </tr>
            <tr>
              <td align="right" bgcolor="#ffffff" valign="top"><?php echo $this->_var['lang']['password']; ?></td>
              <td bgcolor="#ffffff">
              <input name="password" class="InputBorder inputBg" type="password" />
              <a href="#blank" onclick="pwTips()"><?php echo $this->_var['lang']['get_password']; ?>？</a><br />
              <div class="close" id="tips">
              <span title="关闭" id="tipsClose" onclick=" pwTipsClose()"></span>
              如果您忘记了密码，可以通过下面两种方式找回：<br />
              1. <a href="user.php?act=qpassword_name"><?php echo $this->_var['lang']['get_password_by_question']; ?></a><br />
              2. <a href="user.php?act=get_password"><?php echo $this->_var['lang']['get_password_by_mail']; ?></a>
              </div>
              <script type="text/javascript">
              function pwTips(){
              document.getElementById("tips").style.display = "block";
              }
              function pwTipsClose(){
              document.getElementById("tips").style.display = "none";
              }
              </script>
              </td>
            </tr>
            <?php if ($this->_var['enabled_login_captcha']): ?>
            <tr>
              <td align="right" bgcolor="#ffffff"><?php echo $this->_var['lang']['comment_captcha']; ?></td>
              <td bgcolor="#ffffff"><input type="text" size="8" name="captcha" class="InputBorder inputBg" />
              <img src="captcha.php?is_login=1&<?php echo $this->_var['rand']; ?>" alt="captcha" style="vertical-align: middle;cursor: pointer;" onclick="this.src='captcha.php?is_login=1&'+Math.random()" /> </td>
            </tr>
            <?php endif; ?>
            <tr>
              <td align="right" bgcolor="#ffffff">&nbsp;</td>
              <td bgcolor="#ffffff"><input type="checkbox" value="1" name="remember" id="remember" /><label for="remember"><?php echo $this->_var['lang']['remember']; ?></label></td>
            </tr>
            <tr>
              <td colspan="2" align="center" bgcolor="#ffffff">
                  <input type="submit" class="btn_submit_b" name="login" value="" />
                  <?php if ($this->_var['anonymous_buy'] == 1): ?>
                   <a onclick="location.href='flow.php?step=consignee&amp;direct_shopping=1'" style="cursor:pointer"><?php echo $this->_var['lang']['direct_shopping']; ?> </a>
                  <?php endif; ?>
                  <input name="act" type="hidden" value="signin" />
              </td>
            </tr>
      </table>
    </form>
   </div>
   <div class="step_login fl" style="overflow:hidden; margin-left:10px">
   <div class="reg2_tit blank" style="width:465px; margin-top:15px;"><strong style="font-size:18px;">注册</strong> &nbsp;&nbsp;&nbsp;&nbsp; 新用户？ 立即注册。</div>
  <form action="flow.php?step=login" method="post" name="formUser" id="registerForm" onsubmit="return checkSignupForm(this)">
     <table width="100%" border="0" cellpadding="5" cellspacing="0" >
        <tr>
          <td bgcolor="#ffffff" align="right" width="25%"><?php echo $this->_var['lang']['username']; ?></td>
          <td bgcolor="#ffffff"><input name="username" type="text" class="InputBorder inputBg" id="username" onblur="is_registered(this.value);" />
  <span id="username_notice" style="color:#FF0000"></span></td>
        </tr>
        <tr>
          <td bgcolor="#ffffff" align="right"><?php echo $this->_var['lang']['email_address']; ?></td>
          <td bgcolor="#ffffff"><input name="email" type="text" class="InputBorder inputBg" id="email" onblur="checkEmail(this.value);" />
  <span id="email_notice" style="color:#FF0000"></span></td>
        </tr>
        <tr>
          <td bgcolor="#ffffff" align="right"><?php echo $this->_var['lang']['password']; ?></td>
          <td bgcolor="#ffffff"><input name="password" class="InputBorder inputBg" type="password" id="password1" onblur="check_password(this.value);" onkeyup="checkIntensity(this.value)" />
  <span style="color:#FF0000" id="password_notice"></span></td>
        </tr>
        <tr>
          <td bgcolor="#ffffff" align="right"><?php echo $this->_var['lang']['confirm_password']; ?></td>
          <td bgcolor="#ffffff"><input name="confirm_password" class="InputBorder inputBg" type="password" id="confirm_password" onblur="check_conform_password(this.value);" />
  <span style="color:#FF0000" id="conform_password_notice"></span></td>
        </tr>
        <?php if ($this->_var['enabled_register_captcha']): ?>
        <tr>
          <td bgcolor="#ffffff" align="right"><?php echo $this->_var['lang']['comment_captcha']; ?>:</td>
          <td bgcolor="#ffffff"><input type="text" size="8" name="captcha" class="InputBorder inputBg" />
          <img src="captcha.php?<?php echo $this->_var['rand']; ?>" alt="captcha" style="vertical-align: middle;cursor: pointer;" onclick="this.src='captcha.php?'+Math.random()" /> </td>
                   
        </tr>
        <?php endif; ?>
                 <tr>
                <td>&nbsp;</td>
                <td><label>
                    <input name="agreement" type="checkbox" value="1" checked="checked" />
                    <?php echo $this->_var['lang']['agreement']; ?></label></td>
              </tr>
        <tr>
          <td colspan="2" bgcolor="#ffffff" align="center">
              <input type="submit" name="Submit" class="btn_submit" style="margin-left:-70px;" value="" />
              <input name="act" type="hidden" value="signup" />
          </td>
        </tr>
      </table>
    </form>
   </div>
  </div>

<?php endif; ?>
</div>
</div>




<?php echo $this->fetch('library/page_footer_z.lbi'); ?>
</body>
<script type="text/javascript">
var process_request = "<?php echo $this->_var['lang']['process_request']; ?>";
<?php $_from = $this->_var['lang']['passport_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
var username_exist = "<?php echo $this->_var['lang']['username_exist']; ?>";
var compare_no_goods = "<?php echo $this->_var['lang']['compare_no_goods']; ?>";
var btn_buy = "<?php echo $this->_var['lang']['btn_buy']; ?>";
var is_cancel = "<?php echo $this->_var['lang']['is_cancel']; ?>";
var select_spe = "<?php echo $this->_var['lang']['select_spe']; ?>";
</script>
</html>
