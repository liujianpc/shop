<?php if ($this->_var['helps']): ?>
<div style="overflow:hidden; padding:10px; _padding:10px 0px; background-color:#FFFFFF; width:970px; _width:990px">
<div class="pageFooter fl">
  <div class="artBox clearfix" style="width:980px;">
    
    <div class="artList1"> 
     
      <?php $_from = $this->_var['helps']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'help_cat');$this->_foreach['helps'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['helps']['total'] > 0):
    foreach ($_from AS $this->_var['help_cat']):
        $this->_foreach['helps']['iteration']++;
?>
      <div <?php if (($this->_foreach['helps']['iteration'] <= 1)): ?> class="list1 fl" <?php endif; ?> class="list">
        <h4><?php echo $this->_var['help_cat']['cat_name']; ?></h4>
        <ul>
          
          <?php $_from = $this->_var['help_cat']['article']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'item');if (count($_from)):
    foreach ($_from AS $this->_var['item']):
?>
          <li><a href="<?php echo $this->_var['item']['url']; ?>" target="_blank" title="<?php echo htmlspecialchars($this->_var['item']['title']); ?>"><?php echo $this->_var['item']['short_title']; ?></a> </li>
          
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          
        </ul>
      </div>
      <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
       <div class="fl list1" style="width:109px;">
      <h4>官方QQ</h4>
     <img width="80px" height="80px" src="themes/68ecshop_xiaomifree/images/foot_weixin.gif">
      </div> 
    </div>
  </div>
  <div class="block tc" style=""> <img src="themes/68ecshop_xiaomifree/images/serviceImg1.gif"> </div>
</div>
<?php endif; ?>
</div>
<div class="block2 tc" style="margin-top:10px; width:970px;"> 
  <?php if ($this->_var['navigator_list']['bottom']): ?> 
  <div style="margin-bottom:5px;">
  <?php $_from = $this->_var['navigator_list']['bottom']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'nav_0_48437500_1459483852');$this->_foreach['nav_bottom_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['nav_bottom_list']['total'] > 0):
    foreach ($_from AS $this->_var['nav_0_48437500_1459483852']):
        $this->_foreach['nav_bottom_list']['iteration']++;
?> 
  <a href="<?php echo $this->_var['nav_0_48437500_1459483852']['url']; ?>" <?php if ($this->_var['nav_0_48437500_1459483852']['opennew'] == 1): ?> target="_blank" <?php endif; ?>><?php echo $this->_var['nav_0_48437500_1459483852']['name']; ?></a> 
  <?php if (! ($this->_foreach['nav_bottom_list']['iteration'] == $this->_foreach['nav_bottom_list']['total'])): ?> 
  | 
  <?php endif; ?> 
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?><br />
  </div>
  <?php endif; ?> 
  
  <?php echo $this->_var['copyright']; ?><br />
  <?php echo $this->_var['shop_address']; ?> <?php echo $this->_var['shop_postcode']; ?> 
  <?php if ($this->_var['service_phone']): ?> 
  Tel: <?php echo $this->_var['service_phone']; ?> 
  <?php endif; ?> 
  <?php if ($this->_var['service_email']): ?> 
  E-mail: <?php echo $this->_var['service_email']; ?><br />
  <?php endif; ?> 
  <?php $_from = $this->_var['qq']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'im');if (count($_from)):
    foreach ($_from AS $this->_var['im']):
?> 
  <?php if ($this->_var['im']): ?> 
 
 
  <?php endif; ?> 
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
  <?php $_from = $this->_var['ym']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'im');if (count($_from)):
    foreach ($_from AS $this->_var['im']):
?> 
  <?php if ($this->_var['im']): ?> 
  <a href="http://edit.yahoo.com/config/send_webmesg?.target=<?php echo $this->_var['im']; ?>n&.src=pg" target="_blank"><img src="themes/68ecshop_xiaomifree/images/yahoo.gif" width="18" height="17" border="0" alt="Yahoo Messenger" /> <?php echo $this->_var['im']; ?></a> 
  <?php endif; ?> 
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
  <?php $_from = $this->_var['msn']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'im');if (count($_from)):
    foreach ($_from AS $this->_var['im']):
?> 
  <?php if ($this->_var['im']): ?> 
  <img src="themes/68ecshop_xiaomifree/images/msn.gif" width="18" height="17" border="0" alt="MSN" /> <a href="msnim:chat?contact=<?php echo $this->_var['im']; ?>"><?php echo $this->_var['im']; ?></a> 
  <?php endif; ?> 
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?> 
  <?php $_from = $this->_var['skype']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'im');if (count($_from)):
    foreach ($_from AS $this->_var['im']):
?> 
  <?php if ($this->_var['im']): ?> 
  <img src="http://mystatus.skype.com/smallclassic/<?php echo urlencode($this->_var['im']); ?>" alt="Skype" /><a href="skype:<?php echo urlencode($this->_var['im']); ?>?call"><?php echo $this->_var['im']; ?></a> 
  <?php endif; ?> 
  <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?><br />
  <?php if ($this->_var['icp_number']): ?> 
  <?php echo $this->_var['lang']['icp_number']; ?>:<a href="http://www.miibeian.gov.cn/" target="_blank"><?php echo $this->_var['icp_number']; ?></a><br />
  <?php endif; ?> 