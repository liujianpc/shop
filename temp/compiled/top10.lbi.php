<?php if ($this->_var['top_goods']): ?>
	

<div class="mod1 mod2 blank" id="topbox">
	<h1 class="mod2tit" style="background:url(themes/68ecshop_xiaomifree/images/sdgg.gif) repeat-x; height:27px; color:#000"><?php echo $this->_var['lang']['top10']; ?></h1>
	<span class="lb"></span><span class="rb"></span>

	 <ul id="top10">
		 <?php $_from = $this->_var['top_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['top_goods'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['top_goods']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['top_goods']['iteration']++;
?>
		  <li>
			 <div class="first">
			  <div class="fl">
				<font style="color:#FF6F3D; font-weight:bold"><?php echo $this->_foreach['top_goods']['iteration']; ?>.</font> <a href="<?php echo $this->_var['goods']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>"><?php echo $this->_var['goods']['short_name']; ?></a>
				</div>
				<div class="fr"><b class="f1"><?php echo $this->_var['goods']['price']; ?></b></div>
			 </div>
			 <div class="last">
			  <a href="<?php echo $this->_var['goods']['url']; ?>"><img src="<?php echo $this->_var['goods']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>" align="left" /></a>
				<b class="f1"><?php echo $this->_foreach['top_goods']['iteration']; ?>。</b> <a href="<?php echo $this->_var['goods']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>"><b><?php echo $this->_var['goods']['short_name']; ?></b></a><br />
				<?php echo $this->_var['lang']['shop_price']; ?><b class="f1"><?php echo $this->_var['goods']['price']; ?></b><br /> 
			 </div>
			</li>
		 <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>	
		 </ul>
</div>
<script type="text/javascript">
top10("top10","cur");
divheight("topbox");
</script>
<?php endif; ?>