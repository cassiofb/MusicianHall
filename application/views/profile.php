<?php print_r( $user ); ?>
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
	          <div class="span6">
	            <table class="">
	              <tbody>
	                <tr>
	                  <td><h4><?php echo $user->name; ?></h4></td>
	                </tr>
	                <tr>
	                  <td>Porto Alegre</td>
	                </tr>
	                <tr>
	                  <td>Rio Grande do Sul</td>
	                </tr>
	                <tr>
	                  <td>Telefone: <?php echo $user->phone_1; ?></td>
	                </tr>
	                <tr>
	                  <td><?php echo $user->email; ?></td>
	                </tr>
	              </tbody>
	            </table>
	          </div>
	          <div class="span6">
	            <table class="table table-bordered table-invoice">
	              <tbody>
	                <tr>
	                </tr><tr>
	                  <td class="width30">ID: <?php echo $user->id; ?></td>
	                  <td class="width70"><strong><?php echo $user->created_at; ?></strong></td>
	                </tr>
	                <tr>
	                  <td>Enddereço:</td>
	                  <td><strong><?php echo $user->address; ?></strong></td>
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
		              	<td class="width30">Descrição:</td>
		                <td class="width70">
		                  <?php echo $user->description; ?>
		                </td>
		              </tr>
	               </tbody>
	            </table>
	          </div>
	        </div>
	        <div class="row-fluid">
	          <div class="span12">
	            <table class="table table-bordered table-invoice-full">
	              <thead>
	                <tr>
	                  <th class="head0">Type</th>
	                  <th class="head1">Desc</th>
	                  <th class="head0 right">Qty</th>
	                  <th class="head1 right">Price</th>
	                  <th class="head0 right">Amount</th>
	                </tr>
	              </thead>
	              <tbody>
	                <tr>
	                  <td>Firefox</td>
	                  <td>Ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae</td>
	                  <td class="right">2</td>
	                  <td class="right">$150</td>
	                  <td class="right"><strong>$300</strong></td>
	                </tr>
	                <tr>
	                  <td>Chrome Plugin</td>
	                  <td>Tro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt u eos et accusamus et iusto odio dignissimos ducimus  deleniti atque</td>
	                  <td class="right">1</td>
	                  <td class="right">$1,200</td>
	                  <td class="right"><strong>$1,2000</strong></td>
	                </tr>
	                <tr>
	                  <td>Safari App</td>
	                  <td>Rro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt u expedita distinctio</td>
	                  <td class="right">2</td>
	                  <td class="right">$850</td>
	                  <td class="right"><strong>$1,700</strong></td>
	                </tr>
	                <tr>
	                  <td>Opera App</td>
	                  <td>Orro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut</td>
	                  <td class="right">3</td>
	                  <td class="right">$850</td>
	                  <td class="right"><strong>$2,550</strong></td>
	                </tr>
	                <tr>
	                  <td>Netscape Template</td>
	                  <td>Vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</td>
	                  <td class="right">5</td>
	                  <td class="right">$50</td>
	                  <td class="right"><strong>$250</strong></td>
	                </tr>
	              </tbody>
	            </table>
	            <table class="table table-bordered table-invoice-full">
	              <tbody>
	                <tr>
	                  <td class="msg-invoice" width="85%"><h4>Payment method: </h4>
	                    <a href="#" class="tip-bottom" data-original-title="Wire Transfer">Wire transfer</a> |  <a href="#" class="tip-bottom" data-original-title="Bank account">Bank account #</a> |  <a href="#" class="tip-bottom" data-original-title="SWIFT code">SWIFT code </a>|  <a href="#" class="tip-bottom" data-original-title="IBAN Billing address">IBAN Billing address </a></td>
	                  <td class="right"><strong>Subtotal</strong> <br>
	                    <strong>Tax (5%)</strong> <br>
	                    <strong>Discount</strong></td>
	                  <td class="right"><strong>$7,000 <br>
	                    $600 <br>
	                    $50</strong></td>
	                </tr>
	              </tbody>
	            </table>
	            <div class="pull-right">
	              <h4><span>Amount Due:</span> $7,650.00</h4>
	              <br>
	              <a class="btn btn-primary btn-large pull-right" href="">Pay Invoice</a> </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
</div>