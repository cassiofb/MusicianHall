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
									<td class="width70"><strong><?php echo convert_date_to_br_format($user->created_at); ?></strong></td>
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
								<tr>
									<td>Perfil:</td>
									<td><strong><?php echo $user->profile_type; ?></strong></td>
								</tr>
								<tr>
									<td>Instrumentos:</td>
									<td><strong><?php print_r($user_instruments); ?></strong></td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>

				</div><!-- ./widget-content -->

			</div>
		</div>
	</div>
</div>
