<div style=" width:230px; background:#fff; height:427px;*height:420px; float:left; position:relative; top:2px; *top:0px; ">
<div class="mod1 mod2 blank" id="historybox" style="background:#fff; border:0px;">
<span class="lb"></span><span class="rb"></span>
<div class="cagegoryCon clearfix">
<?php $_from = get_categories_tree(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');$this->_foreach['name'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['name']['total'] > 0):
    foreach ($_from AS $this->_var['cat']):
        $this->_foreach['name']['iteration']++;
?> 
<?php if (($this->_foreach['name']['iteration'] == $this->_foreach['name']['total'])): ?>
<dl style="border:none;">
<?php else: ?>
<dl>
  <?php endif; ?>
  <dt><a href="<?php echo $this->_var['cat']['url']; ?>" style="color:#974c19;"><?php echo htmlspecialchars($this->_var['cat']['name']); ?></a></dt>
  
  <?php if ($this->_var['cat']['cat_id']): ?>
  <dd class="clearfix"> 
    <?php $_from = $this->_var['cat']['cat_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'child');$this->_foreach['childs'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['childs']['total'] > 0):
    foreach ($_from AS $this->_var['child']):
        $this->_foreach['childs']['iteration']++;
?>
    <p onMouseOver="this.className='itemsbg'" onMouseOut="this.className=''"><a style="color:#974c19;" href="<?php echo $this->_var['child']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['child']['name']); ?>" class="txtdot"><?php echo htmlspecialchars($this->_var['child']['name']); ?></a></p>
    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
  </dd>
  <?php endif; ?>
</dl>
<?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
</div>
<div class="blank"></div>
</div>
</div>


