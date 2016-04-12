<?php if ($this->_var['new_goods']): ?>
<?php if ($this->_var['cat_rec_sign'] != 1): ?>
<div class="blank">
<div style=" clearfix">
<div class="more clearfix best" id="itemNew" >
<h1 class="tit"><?php echo $this->_var['lang']['new_goods']; ?></h1>
<h1 style="border-bottom:2px solid #E3E3E3;height:25px; line-height:25px;">
<div style="float:right;">
<?php if ($this->_var['cat_rec'] [ 3 ]): ?>
<h2><a href="javascript:void(0)" onclick="change_tab_style('itemNew', 'h2', this);get_cat_recommend(2, 0);"><?php echo $this->_var['lang']['all_goods']; ?></a> |</h2>
<?php $_from = $this->_var['cat_rec']['3']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'rec_data_0_60937500_1460299206');if (count($_from)):
    foreach ($_from AS $this->_var['rec_data_0_60937500_1460299206']):
?>
<h2 class="h2bg">
<a href="javascript:void(0)" onclick="change_tab_style('itemNew', 'h2', this);get_cat_recommend(2, <?php echo $this->_var['rec_data_0_60937500_1460299206']['cat_id']; ?>)"><?php echo $this->_var['rec_data_0_60937500_1460299206']['cat_name']; ?></a> |

</h2>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
<?php endif; ?>
<a href="search.php?intro=hot" style="font-weight:normal;" >更多>></a>
</div>
</h1>
</div>
</div>
<div class="recommendContent entry-content"  id="show_new_area" >
<?php endif; ?>
<?php $_from = $this->_var['new_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_60937500_1460299206');if (count($_from)):
    foreach ($_from AS $this->_var['goods_0_60937500_1460299206']):
?>
<div class="goodsbox1">
				<div class="imgbox1"><a href="<?php echo $this->_var['goods_0_60937500_1460299206']['url']; ?>"><img src="<?php echo $this->_var['goods_0_60937500_1460299206']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods_0_60937500_1460299206']['name']); ?>" /></a></div>
			 <a href="<?php echo $this->_var['goods_0_60937500_1460299206']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods_0_60937500_1460299206']['name']); ?>"><?php echo $this->_var['goods_0_60937500_1460299206']['short_style_name']; ?></a><br />
              <font class="goodspice market"><?php echo $this->_var['goods_0_60937500_1460299206']['market_price']; ?></font>
			 <?php if ($this->_var['goods_0_60937500_1460299206']['promote_price'] != ""): ?>
			 <b class="f1"><?php echo $this->_var['goods_0_60937500_1460299206']['promote_price']; ?></b><br />
			 <?php else: ?>
			 <b class="f1"><?php echo $this->_var['goods_0_60937500_1460299206']['shop_price']; ?></b><br />
			 <?php endif; ?>

			</div>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
<?php if ($this->_var['cat_rec_sign'] != 1): ?>
</div>
</div>
<?php endif; ?>
<?php endif; ?>