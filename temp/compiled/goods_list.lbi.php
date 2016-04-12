<div class="goodsTitle clearfix blank"> <span class="fl"><?php echo $this->_var['lang']['goods_list']; ?></span>
  <form method="GET" class="sort fr" name="listform" >
  <span style="position:relative; top:-1px;">  <?php echo $this->_var['lang']['btn_display']; ?>： <a href="javascript:;" onClick="javascript:display_mode('list')"><img src="themes/68ecshop_xiaomifree/images/display_mode_list<?php if ($this->_var['pager']['display'] == 'list'): ?>_act<?php endif; ?>.gif" alt="<?php echo $this->_var['lang']['display']['list']; ?>"></a> <a href="javascript:;" onClick="javascript:display_mode('grid')"><img src="themes/68ecshop_xiaomifree/images/display_mode_grid<?php if ($this->_var['pager']['display'] == 'grid'): ?>_act<?php endif; ?>.gif" alt="<?php echo $this->_var['lang']['display']['grid']; ?>"></a> <a href="javascript:;" onClick="javascript:display_mode('text')"><img src="themes/68ecshop_xiaomifree/images/display_mode_text<?php if ($this->_var['pager']['display'] == 'text'): ?>_act<?php endif; ?>.gif" alt="<?php echo $this->_var['lang']['display']['text']; ?>"></a></span>&nbsp;&nbsp;<span style="position:relative; top:1px;"> <a href="<?php echo $this->_var['script_name']; ?>.php?category=<?php echo $this->_var['category']; ?>&display=<?php echo $this->_var['pager']['display']; ?>&brand=<?php echo $this->_var['brand_id']; ?>&price_min=<?php echo $this->_var['price_min']; ?>&price_max=<?php echo $this->_var['price_max']; ?>&filter_attr=<?php echo $this->_var['filter_attr']; ?>&page=<?php echo $this->_var['pager']['page']; ?>&sort=goods_id&order=<?php if ($this->_var['pager']['sort'] == 'goods_id' && $this->_var['pager']['order'] == 'DESC'): ?>ASC<?php else: ?>DESC<?php endif; ?>#goods_list"><img src="themes/68ecshop_xiaomifree/images/goods_id_<?php if ($this->_var['pager']['sort'] == 'goods_id'): ?><?php echo $this->_var['pager']['order']; ?><?php else: ?>default<?php endif; ?>.gif" alt="<?php echo $this->_var['lang']['sort']['goods_id']; ?>"></a> <a href="<?php echo $this->_var['script_name']; ?>.php?category=<?php echo $this->_var['category']; ?>&display=<?php echo $this->_var['pager']['display']; ?>&brand=<?php echo $this->_var['brand_id']; ?>&price_min=<?php echo $this->_var['price_min']; ?>&price_max=<?php echo $this->_var['price_max']; ?>&filter_attr=<?php echo $this->_var['filter_attr']; ?>&page=<?php echo $this->_var['pager']['page']; ?>&sort=shop_price&order=<?php if ($this->_var['pager']['sort'] == 'shop_price' && $this->_var['pager']['order'] == 'ASC'): ?>DESC<?php else: ?>ASC<?php endif; ?>#goods_list"><img src="themes/68ecshop_xiaomifree/images/shop_price_<?php if ($this->_var['pager']['sort'] == 'shop_price'): ?><?php echo $this->_var['pager']['order']; ?><?php else: ?>default<?php endif; ?>.gif" alt="<?php echo $this->_var['lang']['sort']['shop_price']; ?>"></a> <a href="<?php echo $this->_var['script_name']; ?>.php?category=<?php echo $this->_var['category']; ?>&display=<?php echo $this->_var['pager']['display']; ?>&brand=<?php echo $this->_var['brand_id']; ?>&price_min=<?php echo $this->_var['price_min']; ?>&price_max=<?php echo $this->_var['price_max']; ?>&filter_attr=<?php echo $this->_var['filter_attr']; ?>&page=<?php echo $this->_var['pager']['page']; ?>&sort=last_update&order=<?php if ($this->_var['pager']['sort'] == 'last_update' && $this->_var['pager']['order'] == 'DESC'): ?>ASC<?php else: ?>DESC<?php endif; ?>#goods_list"><img src="themes/68ecshop_xiaomifree/images/last_update_<?php if ($this->_var['pager']['sort'] == 'last_update'): ?><?php echo $this->_var['pager']['order']; ?><?php else: ?>default<?php endif; ?>.gif" alt="<?php echo $this->_var['lang']['sort']['last_update']; ?>"></a></span>
    <input type="hidden" name="category" value="<?php echo $this->_var['category']; ?>" />
    <input type="hidden" name="display" value="<?php echo $this->_var['pager']['display']; ?>" id="display" />
    <input type="hidden" name="brand" value="<?php echo $this->_var['brand_id']; ?>" />
    <input type="hidden" name="price_min" value="<?php echo $this->_var['price_min']; ?>" />
    <input type="hidden" name="price_max" value="<?php echo $this->_var['price_max']; ?>" />
    <input type="hidden" name="filter_attr" value="<?php echo $this->_var['filter_attr']; ?>" />
    <input type="hidden" name="page" value="<?php echo $this->_var['pager']['page']; ?>" />
    <input type="hidden" name="sort" value="<?php echo $this->_var['pager']['sort']; ?>" />
    <input type="hidden" name="order" value="<?php echo $this->_var['pager']['order']; ?>" />
  </form>
</div>
<div class="clearfix modContent"> 
  <?php if ($this->_var['category'] > 0): ?>
  <form name="compareForm" action="compare.php" method="post" onSubmit="return compareGoods(this);">
    <?php endif; ?> 
    <?php if ($this->_var['pager']['display'] == 'list'): ?>
    <div class="cateGoodList"> 
      <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['goods_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['goods_list']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['goods_list']['iteration']++;
?>
      <ul class="clearfix">
        <li class="thumb"><a href="<?php echo $this->_var['goods']['url']; ?>"><img src="<?php echo $this->_var['goods']['goods_thumb']; ?>" alt="<?php echo $this->_var['goods']['goods_name']; ?>" /></a></li>
        <li class="goodsText"> <a href="<?php echo $this->_var['goods']['url']; ?>"> 
          <?php if ($this->_var['goods']['goods_style_name']): ?> 
          <b><?php echo $this->_var['goods']['goods_style_name']; ?></b><br />
          <?php else: ?> 
          <b><?php echo $this->_var['goods']['goods_name']; ?></b><br />
          <?php endif; ?> 
          </a> 
          <?php if ($this->_var['goods']['goods_brief']): ?> 
          <?php echo $this->_var['lang']['goods_brief']; ?><?php echo $this->_var['goods']['goods_brief']; ?><br />
          <?php endif; ?> 
        </li>
        <li> 
          <?php if ($this->_var['show_marketprice']): ?> 
          <?php echo $this->_var['lang']['market_price']; ?><font class="market"><?php echo $this->_var['goods']['market_price']; ?></font><br />
          <?php endif; ?> 
          <?php if ($this->_var['goods']['promote_price'] != ""): ?> 
          <?php echo $this->_var['lang']['promote_price']; ?><font class="price"><?php echo $this->_var['goods']['promote_price']; ?></font><br />
          <?php else: ?> 
          <?php echo $this->_var['lang']['shop_price']; ?><font class="price"><?php echo $this->_var['goods']['shop_price']; ?></font><br />
          <?php endif; ?> 
        </li>
        <li class="action"> <a href="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)">购买</a> | <a href="javascript:collect(<?php echo $this->_var['goods']['goods_id']; ?>)">收藏</a> | <a href="javascript:;" id="compareLink" onClick="Compare.add(<?php echo $this->_var['goods']['goods_id']; ?>,'<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>','<?php echo $this->_var['goods']['type']; ?>')">比较</a> </li>
      </ul>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
    </div>
    <?php elseif ($this->_var['pager']['display'] == 'grid'): ?>
    <div class="clearfix grid" style="padding-left:6px; *padding-left:5px;"> 
      <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');if (count($_from)):
    foreach ($_from AS $this->_var['goods']):
?> 
      <?php if ($this->_var['goods']['goods_id']): ?>
      <div class="goodsbox1" style="margin-left:6px;">
        <div class="imgbox1"><a href="<?php echo $this->_var['goods']['url']; ?>"><img src="<?php echo $this->_var['goods']['goods_thumb']; ?>" alt="<?php echo $this->_var['goods']['goods_name']; ?>" /></a></div>
        <a href="<?php echo $this->_var['goods']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>"><?php echo $this->_var['goods']['goods_name']; ?></a><br />
        
        <?php if ($this->_var['show_marketprice']): ?> 
        <font class="market"><?php echo $this->_var['goods']['market_price']; ?></font> 
        <?php endif; ?> 
        <?php if ($this->_var['goods']['promote_price'] != ""): ?> 
        <b class="f1"><?php echo $this->_var['goods']['promote_price']; ?></b> 
        <?php else: ?> 
        <b class="f1"><?php echo $this->_var['goods']['shop_price']; ?></b><br />
        <?php endif; ?> 
        
      </div>
      <?php endif; ?> 
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
    </div>
    <?php elseif ($this->_var['pager']['display'] == 'text'): ?>
    <div class="cateGoodList"> 
      <?php $_from = $this->_var['goods_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['goods_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['goods_list']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['goods_list']['iteration']++;
?>
      <ul class="clearfix">
        <li class="goodsText"> <a href="<?php echo $this->_var['goods']['url']; ?>"> 
          <?php if ($this->_var['goods']['goods_style_name']): ?> 
          <b><?php echo $this->_var['goods']['goods_style_name']; ?></b><br />
          <?php else: ?> 
          <b><?php echo $this->_var['goods']['goods_name']; ?></b><br />
          <?php endif; ?> 
          </a> 
          <?php if ($this->_var['goods']['goods_brief']): ?> 
          <?php echo $this->_var['lang']['goods_brief']; ?><?php echo $this->_var['goods']['goods_brief']; ?><br />
          <?php endif; ?> 
        </li>
        <li> 
          <?php if ($this->_var['show_marketprice']): ?> 
          <font class="market"><?php echo $this->_var['lang']['market_price']; ?><?php echo $this->_var['goods']['market_price']; ?></font><br />
          <?php endif; ?> 
          <?php if ($this->_var['goods']['promote_price'] != ""): ?> 
          <font class="price"><?php echo $this->_var['lang']['promote_price']; ?><?php echo $this->_var['goods']['promote_price']; ?></font><br />
          <?php else: ?> 
          <font class="price"><?php echo $this->_var['lang']['shop_price']; ?><?php echo $this->_var['goods']['shop_price']; ?></font><br />
          <?php endif; ?> 
        </li>
        <li class="action"> <a href="javascript:addToCart(<?php echo $this->_var['goods']['goods_id']; ?>)">购买</a> | <a href="javascript:collect(<?php echo $this->_var['goods']['goods_id']; ?>)">收藏</a> | <a href="javascript:;" id="compareLink" onClick="Compare.add(<?php echo $this->_var['goods']['goods_id']; ?>,'<?php echo htmlspecialchars($this->_var['goods']['goods_name']); ?>','<?php echo $this->_var['goods']['type']; ?>')">比较</a> </li>
      </ul>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
    </div>
    <?php endif; ?> 
    <?php if ($this->_var['category'] > 0): ?>
  </form>
  <?php endif; ?> 
</div>
<script type="Text/Javascript" language="JavaScript">
<!--

function selectPage(sel)
{
  sel.form.submit();
}

//-->
</script> 
<script type="text/javascript">
window.onload = function()
{
  Compare.init();
  fixpng();
}
<?php $_from = $this->_var['lang']['compare_js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
<?php if ($this->_var['key'] != 'button_compare'): ?>
var <?php echo $this->_var['key']; ?> = "<?php echo $this->_var['item']; ?>";
<?php else: ?>
var button_compare = '';
<?php endif; ?>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
var compare_no_goods = "<?php echo $this->_var['lang']['compare_no_goods']; ?>";
var btn_buy = "<?php echo $this->_var['lang']['btn_buy']; ?>";
var is_cancel = "<?php echo $this->_var['lang']['is_cancel']; ?>";
var select_spe = "<?php echo $this->_var['lang']['select_spe']; ?>";
</script>