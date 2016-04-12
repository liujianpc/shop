<?php if ($this->_var['promotion_info']): ?>
<div class="mod1 mod2 blank" id="promotionInfo">
	<span class="lt"></span><span class="lb"></span><span class="rt"></span><span class="rb"></span>
	<h1 class="mod2tit"><?php echo $this->_var['lang']['promotion_info']; ?></h1>
	<div class="mod2con">
	<?php $_from = $this->_var['promotion_info']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('key', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['key'] => $this->_var['item']):
?>
	<?php if ($this->_var['item']['type'] == "snatch"): ?>
   	<a href="snatch.php" title="<?php echo $this->_var['lang'][$this->_var['item']['type']]; ?>" class="txtdot"><?php echo $this->_var['lang']['snatch_promotion']; ?></a>
    <?php elseif ($this->_var['item']['type'] == "group_buy"): ?>
    <a href="group_buy.php" title="<?php echo $this->_var['lang'][$this->_var['item']['type']]; ?>" class="txtdot"><?php echo $this->_var['lang']['group_promotion']; ?></a>
    <?php elseif ($this->_var['item']['type'] == "auction"): ?>
    <a href="auction.php" title="<?php echo $this->_var['lang'][$this->_var['item']['type']]; ?>" class="txtdot"><?php echo $this->_var['lang']['auction_promotion']; ?></a>
    <?php elseif ($this->_var['item']['type'] == "favourable"): ?>
    <a href="activity.php" title="<?php echo $this->_var['lang'][$this->_var['item']['type']]; ?>" class="txtdot"><?php echo $this->_var['lang']['favourable_promotion']; ?></a>
		<?php elseif ($this->_var['item']['type'] == "package"): ?>
    <a href="package.php" title="<?php echo $this->_var['lang'][$this->_var['item']['type']]; ?>" class="txtdot"><?php echo $this->_var['lang']['package_promotion']; ?></a>
    <?php endif; ?>
    <a href="<?php echo $this->_var['item']['url']; ?>" title="<?php echo $this->_var['lang'][$this->_var['item']['type']]; ?> <?php echo $this->_var['item']['act_name']; ?><?php echo $this->_var['item']['time']; ?>"><?php echo $this->_var['item']['act_name']; ?></a><br />
	<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
	</div>
</div>
<script type="text/javascript">divheight("promotionInfo");</script>
<?php endif; ?>			