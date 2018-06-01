<!--Header-part-->
    <div id="header">
      <h1><a href="dashboard.html">Musician Hall</a></h1>
    </div>
    <!--close-Header-part--> 
    <div id="app">

      <!--top-Header-menu-->
      <div id="user-nav" class="navbar navbar-inverse" data-user='<?php echo json_encode($this->session->userdata()); ?>'>
        <ul class="nav">
          <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">{{message}} <?php echo explode(' ', $this->session->userdata('user_name'))[0]; ?></span><b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="<?php echo base_url('profile') ?>"><i class="icon-user"></i> {{profile.label_profile}}</a></li>
              <li class="divider"></li>
              <li><a href="#"><i class="icon-check"></i> {{profile.label_tasks}}</a></li>
              <li class="divider"></li>
              <li><a href="login"><i class="icon-key"></i> {{profile.label_logout}}</a></li>
            </ul>
          </li>
          <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text"> {{messages.label}}</span> <span class="label label-important">5</span> <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a class="sAdd" title="" href="<?php echo base_url('newmessage') ?>"><i class="icon-plus"></i> {{messages.label_new_message}}</a></li>
              <li class="divider"></li>
              <li><a class="sInbox" title="" href="<?php echo base_url('messages'); ?>"><i class="icon-envelope"></i> {{messages.label_inbox}}</a></li>
              <li class="divider"></li>
              <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> {{messages.label_trash}}</a></li>
            </ul>
          </li>
          <li class=""><a title="" href="<?php echo base_url('settings') ?>"><i class="icon icon-cog"></i> <span class="text">{{messages.label}}</span></a></li>
          <li class=""><a title="" href="<?php echo base_url('login/loggout') ?>"><i class="icon icon-share-alt"></i> <span class="text">{{messages.label_logout}}</span></a></li>
          <li class=""><a title="" href="www.facebook.com"><i class="icon icon-facebook-sign"></i></a></li>
        </ul>

      </div>

    </div>
    <!--close-top-Header-menu-->
     <!--start-top-serch-->
    <div id="search">
      <form id="search-form" class="" action="<?php echo base_url('user/search'); ?>" method="POST">
        <input type="text" name="term" placeholder="Busque aqui..."/>
        <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
      </form>
    </div>
    <!--close-top-serch-->