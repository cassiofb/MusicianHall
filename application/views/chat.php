<div class="widget-box widget-chat">
  <div class="widget-title bg_lb">
     <span class="icon"> <i class="icon-comment"></i> </span>
     <h5>Chat Option</h5>
  </div>
  <div class="widget-content nopadding collapse in" id="collapseG4">
     <div class="chat-users panel-right2">
        <div class="panel-title">
           <h5>Online Users</h5>
        </div>
        <div class="panel-content nopadding">
           <ul class="contact-list">
              <?php foreach ($contacts as $key => $val) : $count = $key+1; ?>
                <li id="user-<?php echo $key; ?>" class="online">
                  <a href="">
                    <img alt="thumbnail" src="<?php echo 'assets/img/demo/av' . $count . '.jpg'; ?>" />
                    <span><?php echo $val->name; ?></span>
                  </a>
                </li>
              <?php endforeach; ?>
              

              <!-- <li id="user-Linda"><a href=""><img alt="" src="assets/img/demo/av2.jpg" /> <span>Linda</span></a></li>
              
              <li id="user-John" class="online new">
                <a href="">
                  <img alt="" src="assets/img/demo/av3.jpg" />
                  <span>John</span>
                </a>
                <span class="msg-count badge badge-info">3</span>
              </li>

              <li id="user-Mark" class="online"><a href=""><img alt="" src="assets/img/demo/av4.jpg" /> <span>Mark</span></a></li>
              !-->
           
           </ul>
        </div>
     </div>
     <div class="chat-content panel-left2">
        <div class="chat-messages" id="chat-messages">
           <div id="chat-messages-inner">
            
            <p id="msg-1" class="user-linda" style="display: block;">
              <span class="msg-block">
                <img src="assets/img/demo/av2.jpg" alt="thumbnail" />
                <strong>Linda</strong>
                <span class="time">- 19:11</span>
                <span class="msg">Hello Every one do u want to freindship with me?</span>
              </span>
            </p>

           </div>
        </div>
        <div class="chat-message well">
           <button class="btn btn-success">Send</button>
           <span class="input-box">
           <input type="text" name="msg-box" id="msg-box" />
           </span> 
        </div>
     </div>
  </div>
</div>