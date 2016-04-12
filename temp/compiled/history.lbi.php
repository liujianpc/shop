
<div id='history_div'>
<div class="mod1 mod2 blank" id="historybox">
<h1 class="mod2tit" style="background:url(themes/68ecshop_xiaomifree/images/sdgg.gif) repeat-x; height:27px;"><font  style="color:#000"><?php echo $this->_var['lang']['view_history']; ?></font></h1>

	<span class="lb"></span><span class="rb"></span>
	<div id='history_list' class="history_list mod2con">
	 <?php 
$k = array (
  'name' => 'history',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?>
  </div>
</div>
</div>
<script type="text/javascript">
divheight("historybox");
if (document.getElementById('history_list').innerHTML.replace(/\s/g,'').length<1)
{
    document.getElementById('history_div').style.display='none';
}
else
{
    document.getElementById('history_div').style.display='block';
}
function clear_history()
{
Ajax.call('user.php', 'act=clear_history',clear_history_Response, 'GET', 'TEXT',1,1);
}
function clear_history_Response(res)
{
document.getElementById('history_list').innerHTML = '<?php echo $this->_var['lang']['no_history']; ?>';
}
</script>
