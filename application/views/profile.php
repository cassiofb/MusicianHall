<div class="container-fluid">
	<div class="row-fluid">
	  <div class="span12">
	    <div class="widget-box">
	      <div class="widget-title">
	      	<span class="icon">
	      		<i class="icon-bookmark"></i>
	      	</span>
	        <h5>Perfil de usuário</h5>
	      </div>
	      
	      <div class="widget-content">
	        <div class="row-fluid">
	          <div class="span4">
	            <table class="">
	              <tbody>
	                <tr>
	                  <td><h4><?php echo $user->name; ?></h4></td>
	                </tr>
	                <tr>
	                  <td><?php echo $user->description; ?></td>
	                </tr>
	              </tbody>
	            </table>
	          </div>
	          <div class="span8">
	            <table class="table table-bordered table-invoice">
	              <tbody>
	                <tr>
	                </tr><tr>
	                  <td class="width30">ID: <?php echo $user->id; ?></td>
	                  <td class="width70"><strong><?php echo $user->created_at; ?></strong></td>
	                </tr>
	                <tr>
	                  <td>Endereço:</td>
	                  <td><strong><?php echo $user->address; ?></strong></td>
	                </tr>
	                <tr>
	                	<td>Cidade:</td>
	                  <td><strong>Porto Alegre</strong></td>
	                </tr>
	                <tr>
	                	<td>Estado:</td>
	                  <td><strong>Rio Grande do Sul</strong></td>
	                </tr>
	                <tr>
	                  <td>Contato:</td>
	                  <td><strong><?php echo $user->phone_1; ?></strong></td>
	                </tr>
	                <tr>
	                  <td>Email:</td>
	                  <td><strong><?php echo $user->email; ?></strong></td>
	                </tr>
	               </tbody>
	            </table>
	          </div>
	        </div>
	        <div class="row-fluid">
	          <div class="span5">

	          	<div class="widget-box">
				        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
				          <h5>Preferências</h5>
				        </div>
				        <div class="widget-content nopadding">
				          <form id="profile-form" class="form-horizontal" action="<?php echo base_url('user/update'); ?>" method="POST">
				          <input type="hidden" name="action" value="preferece">
				            <div class="control-group">
				              <label class="control-label">Perfil</label>
				              <div class="controls">
				                <select name="profile">
				                	<option>Selecione</option>
				                	<?php foreach($profiles as $k => $v) : ?>
				                  	<option value="<?php echo $v->initials; ?>"><?php echo $v->name; ?></option>
				                  <?php endforeach; ?>
				                </select>
				              </div>
				            </div>
				            <div class="control-group">
				              <label class="control-label">Instrumentos</label>
				              <div class="controls">
				                <select multiple name="instrument">
				                  <?php foreach($instruments as $k => $v) : ?>
				                  	<option value="<?php echo $v->id; ?>"><?php echo $v->name; ?></option>
				                  <?php endforeach; ?>
				                </select>
				              </div>
				            </div>
				            <div class="control-group">
				              <label class="control-label">Prioridade de busca</label>
				              <div class="controls">
				                <label><input type="radio" name="priority" value="proximity" />Proximidade</label>
				                <label><input type="radio" name="priority" value="style" />Gênero músical</label>
				                <label><input type="radio" name="priority" value="experience" />Experiência</label>
				              </div>
				            </div>
				            <!-- <div class="control-group">
				              <label for="checkboxes" class="control-label">Data Toggle checkbox</label>
				              <div class="controls">
				                <div data-toggle="buttons-checkbox" class="btn-group">
				                  <button class="btn btn-primary" type="button">Left</button>
				                  <button class="btn btn-primary" type="button">Middle</button>
				                  <button class="btn btn-primary" type="button">Right</button>
				                </div>
				              </div>
				            </div>
				            <div class="control-group">
				              <label for="checkboxes" class="control-label">Data Radio button</label>
				              <div class="controls">
				                <div data-toggle="buttons-radio" class="btn-group">
				                  <button class="btn btn-primary" type="button">Left</button>
				                  <button class="btn btn-primary" type="button">Middle</button>
				                  <button class="btn btn-primary" type="button">Right</button>
				                </div>
				              </div>
				            </div>
				            <div class="control-group">
				              <label class="control-label">File upload input</label>
				              <div class="controls">
				                <input type="file" />
				              </div>
				            </div>
				            <div class="control-group">
				              <label class="control-label">Disabled Input</label>
				              <div class="controls">
				                <input type="text" placeholder="You can't type anything…" disabled="" class="span11">
				              </div>
				            </div> -->
				            <div class="form-actions">
				              <button type="submit" class="btn btn-success">Salvar</button>
				            </div>
				          </form>
				        </div>
				      </div>
	            
	          </div><!-- ./span6 -->
	          <div class="span7">
	          	<div class="widget-box">
			          <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
			            <h5>Informações para pagamento</h5>
			          </div>
			          <div class="widget-content nopadding">
			            <form class="form-horizontal" method="post" action="<?php echo base_url('user/update'); ?>" name="basic_validate" id="basic_validate" novalidate="novalidate">
			            <input type="hidden" name="action" value="payments">
			              <div class="control-group">
			                <label class="control-label" style="width: 200px;">Número do cartão de crédito</label>
			                <div class="controls" style="margin-left: 220px;">
			                  <input type="text" name="number_cc" id="number_cc" style="width: 80%;">
			                </div>
			              </div>
			              <div class="control-group">
			                <label class="control-label" style="width: 200px;">Nome (igual está no cartão)</label>
			                <div class="controls" style="margin-left: 220px;">
			                  <input type="text" name="name_cc" id="name_cc" style="width: 80%;">
			                </div>
			              </div>
			              <div class="control-group">
			                <label class="control-label" style="width: 200px;">CVV</label>
			                <div class="controls" style="margin-left: 220px;">
			                  <input type="text" name="cvv" id="cvv" style="width: 80%;">
			                </div>
			              </div>
			              <div class="control-group">
			                <label class="control-label" style="width: 200px;">Data de validade do cartão</label>
			                <div class="controls" style="margin-left: 220px;">
			                  <input type="text" name="validate_cc" id="validate_cc" style="width: 80%;">
			                </div>
			              </div>
			              <div class="form-actions">
			                <input type="submit" value="Salvar" class="btn btn-success">
			              </div>
			            </form>
			          </div>
			        </div>
	          </div>

	        </div>

	      </div><!-- ./widget-content -->

	    </div>
	  </div>
	</div>
</div>