<div class="widget-box">
  <div class="widget-title">
    <span class="icon"><i class="icon-th-list"></i></span>
    <h5>Contatos</h5>
  </div>
  <div class="widget-content">
  	<ul class="site-stats">
  		<?php if (isset($contacts) && is_array($contacts)) : ?>
	  		<?php foreach ($contacts as $key => $val) : ?>
		        <li class="bg_lh card" style="width: 20%;">
		        	<i class="icon-zoom-in icon-button-left icon-button-top" title="Detalhes"></i>
		        	<a href="<?php echo BASE_URL . 'contacts/remove/' . $val->connection_id ?>"><i class="icon-trash icon-button-right icon-button-top" title="Remover contato"></i></a>
		        	<i class="icon-star-empty icon-button-left icon-button-bottom" title="Favoritar contato"></i>
		        	<i class="icon-envelope-alt icon-button-right icon-button-bottom" title="Enviar mensagem"></i>
		        	<i class="icon-user"></i> 
		        	<h5 style="margin: 0;"><?php echo $val->name ?></h5> 
		        	<small><?php echo $val->email ?></small>
		        </li>
	  	  <?php endforeach; ?>
	  	<?php else : ?>
	  		<span style="color: #d81313; margin-left: 2px;">Nenhum resultado encontrado</span>
	  	<?php endif; ?>
	  </ul>
  </div>
</div>