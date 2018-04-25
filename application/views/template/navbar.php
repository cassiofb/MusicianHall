<!--Header-part-->
    <div id="header">
      <h1><a href="dashboard.html">Musician Hall</a></h1>
    </div>
    <!--close-Header-part--> 
    <div id="app">

      <!--top-Header-menu-->
      <div id="user-nav" class="navbar navbar-inverse">
        <ul class="nav">
          <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User {{message}}</span><b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
              <li class="divider"></li>
              <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
              <li class="divider"></li>
              <li><a href="login"><i class="icon-key"></i> Log Out</a></li>
            </ul>
          </li>
          <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Mensagens</span> <span class="label label-important">5</span> <b class="caret"></b></a>
            <ul class="dropdown-menu">
              <li><a class="sAdd" title="" href="<?php echo base_url('newmessage') ?>"><i class="icon-plus"></i> new message</a></li>
              <li class="divider"></li>
              <li><a class="sInbox" title="" href="<?php echo base_url('messages'); ?>"><i class="icon-envelope"></i> inbox</a></li>
              <li class="divider"></li>
              <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
            </ul>
          </li>
          <li class=""><a title="" href="<?php echo base_url('settings') ?>"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
          <li class=""><a title="" href="<?php echo base_url('login/loggout') ?>"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
          <li class=""><a title="" href="www.facebook.com"><i class="icon icon-facebook-sign"></i></a></li>
        </ul>

      </div>

    </div>
    <!--close-top-Header-menu-->
     <!--start-top-serch-->
    <div id="search">
      <input type="text" placeholder="Search here..."/>
      <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
    </div>
    <!--close-top-serch-->