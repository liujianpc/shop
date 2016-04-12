<?php if ($this->_var['helps']): ?>

<div class="mod1 mod2 blank" id="historybox" style="width:200px;">
	<span class="lt"></span><span class="lb"></span><span class="rt"></span><span class="rb"></span>
	<h1 class="mod2tit">帮助中心</h1>
    
    
    	  <div class="helpleftbox">
		  <?php $_from = $this->_var['helps']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'help_cat');if (count($_from)):
    foreach ($_from AS $this->_var['help_cat']):
?>
			<div class="goodsbox1">
			 <div class="helpTit1"><?php echo $this->_var['help_cat']['cat_name']; ?></div>
			 <div class="helpList1 tl">
				<?php $_from = $this->_var['help_cat']['article']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>
				·<a href="<?php echo $this->_var['item']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['item']['title']); ?>"><?php echo $this->_var['item']['short_title']; ?></a><br />
				<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
			 </div>
			</div>
		 <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>	
		</div>
        
        <script type="text/javascript">divheight("helpbox");</script>	
        
</div>

<?php endif; ?>