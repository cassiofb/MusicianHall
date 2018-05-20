    <!--sidebar-menu-->
    <div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
      <ul>
        <li class="active"><a href="<?php echo base_url('home'); ?>"><i class="icon icon-home"></i> <span>Home</span></a> </li>
        <li>
          <a href="<?php echo base_url('chat'); ?>"><i class="icon icon-comments"></i> <span>Chat</span></a>
          <a href="#" style="position: absolute; top: 0; right: 0; border-left: 1px solid #555; box-shadow: -1px 0px 0px #222; padding: 10px 0 10px 10px;" 
            data-toggle="modal" data-target="#exampleModal">
            <i class="icon icon-plus"></i>
          </a>
        </li>
        <li><a href="<?php echo base_url('contacts'); ?>"><i class="icon icon-group"></i> <span>Contatos</span></a></li>
      </ul>
    </div>
    <!--sidebar-menu-->
    
    <div id="content">

      <div id="breadcrumb">
        <a href="index.html" class="tip-bottom" data-original-title="Go to Messages"><i class="<?php echo $pageIcon ?>"></i> <?php echo $namePage; ?></a>
      </div>

      <div class="container-fluid">
