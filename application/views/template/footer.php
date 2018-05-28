</div>

</div>
<!--Footer-part-->

<div class="row-fluid">
	<div id="footer" class="span12"> 2018 &copy;. Desenvolvido por William e Cassiano </div>
</div>

<!-- Modal -->
<!-- <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
	 aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel" style="display: inline;">Chat</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: 0;">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="#" method="get" class="form-horizontal">
					<div class="control-group">
						<label class="control-label">Contatos</label>
						<div class="controls">
							<select class="form-control">
								<option>Selecione</option>
								<option>Fulano</option>
								<option>Siclano</option>
								<option>Beutrano</option>
							</select>
						</div>
					</div>

					<div class="control-group">
						<div class="chat-message well">
							<button class="btn btn-success">Send</button>
							<span class="input-box">
                    <input type="text" name="msg-box" id="msg-box">
                  </span>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="button" class="btn btn-primary">Save changes</button>
			</div>
		</div>
	</div>
</div> -->

<!--end-Footer-part-->

<!-- <script src="<?php echo BASE_URL; ?>assets/js/excanvas.min.js"></script> -->
<script src="<?php echo BASE_URL; ?>assets/js/jquery.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery.ui.custom.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/bootstrap.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery.flot.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery.flot.resize.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery.peity.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/fullcalendar.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/bootstrap-colorpicker.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/bootstrap-datepicker.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery.wizard.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery.uniform.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/select2.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery.gritter.min.js"></script>
<!--<script src="--><?php //echo BASE_URL; ?><!--assets/js/matrix.interface.js"></script>-->
<script src="<?php echo BASE_URL; ?>assets/js/jquery.validate.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery.dataTables.min.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/matrix.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/matrix.chat.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/matrix.form_common.js"></script>
<!-- <script src="<?php echo BASE_URL; ?>assets/js/matrix.form_validation.js"></script> -->
<script src="<?php echo BASE_URL; ?>assets/js/matrix.popover.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/matrix.tables.js"></script>
<script src="<?php echo BASE_URL; ?>assets/js/jquery.mask.min.js"></script>

<script src="<?php echo BASE_URL; ?>assets/js/index.js"></script>

<script type="text/javascript">
	$(function () {

		$('.fg-toolbar.ui-toolbar').html($('table[pagination]').attr('pagination'));

		setTimeout(function () {
			$('a[data-ci-pagination-page]').addClass('fg-button').addClass('ui-button').addClass('ui-state-default');
			$('a[rel="prev"]').addClass('previous');
			$('a[rel="next"]').addClass('next');
		}, 1000);
	});
</script>
</body>
</html>
