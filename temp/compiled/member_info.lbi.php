<?php if ($this->_var['user_info']): ?>
<?php echo $this->_var['lang']['hello']; ?>，<b class="username"><?php echo $this->_var['user_info']['username']; ?></b>，<?php echo $this->_var['lang']['welcome_return']; ?>！
<a href="user.php"><?php echo $this->_var['lang']['user_center']; ?></a>
<a href="user.php?act=logout"><?php echo $this->_var['lang']['user_logout']; ?></a>
<?php else: ?> <a href="user.php">登录</a>/ <a href="user.php">免费注册</a>
<?php endif; ?>
