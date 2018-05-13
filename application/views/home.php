<!--Action boxes-->
<div class="widget-box">

	<div class="widget-title bg_lb">
     <span class="icon"> <i class="icon-signal"></i> </span>
     <h5>Dashboard</h5>
  </div>

  <div class="widget-content collapse in" id="collapseG4">
  	<form id="search-form" class="" action="<?php echo base_url('user/search'); ?>" method="POST">
		  <div class="control-group">
		    <div class="controls">
		      <div class="main_input_box" style="position: relative;">
		        <span class="error-message" style="width: 100%;"><?php echo $this->session->flashdata('erroLogin'); ?></span>
		        <input type="text" name="term" placeholder="Digite algo" style="margin: 0;" />
		        <input type="submit" class="btn btn-success" value="OK"/>
		      </div>
		    </div>
		  </div>
		</form>

	  <ul class="quick-actions">
	    <li class="bg_lb"> <a href="home"> <i class="icon-dashboard"></i> Dashboard </a> </li>
	    <li class="bg_ly"> <a href="messages"> <i class="icon-inbox"></i> Mensagens </a> </li>
	    <li class="bg_lo"> <a href="tables.html"> <i class="icon-th"></i> Tables</a> </li>
	    <li class="bg_lo span3"> <a href="form-common.html"> <i class="icon-th-list"></i> Forms</a> </li>
	    <li class="bg_ls"> <a href="buttons.html"> <i class="icon-tint"></i> Buttons</a> </li>
	    <li class="bg_lb"> <a href="interface.html"> <i class="icon-pencil"></i>Elements</a> </li>
	    <li class="bg_lg"> <a href="calendar.html"> <i class="icon-calendar"></i>Calendar</a> </li>
	  </ul>
	  </div>

</div>
<!--End-Action boxes-->    
