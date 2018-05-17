<div class="widget-box">
  <div class="widget-title">
    <span class="icon"><i class="icon-th"></i></span>
    <h5>Usuários encontrados</h5>
  </div>
  <div class="widget-content nopadding">
    <div id="DataTables_wrapper" class="dataTables_wrapper" role="grid">
      <div class="">

      </div>
      <span style="color: #d81313; margin-left: 2px;"><?php echo $msg_retorno ?? '';  ?></span>
      <table class="table table-bordered data-table dataTable" id="DataTables_Table_0" pagination='<?php echo $pagination; ?>'>
        <thead>
          <tr role="row">
            <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending" style="width: 202px;">
              <div class="DataTables_sort_wrapper">Nome<span class="DataTables_sort_icon css_right ui-icon ui-icon-triangle-1-n"></span></div>
            </th>
            <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 329px;">
              <div class="DataTables_sort_wrapper">Email<span class="DataTables_sort_icon css_right ui-icon ui-icon-carat-2-n-s"></span></div>
            </th>
            <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 298px;">
              <div class="DataTables_sort_wrapper">Descrição<span class="DataTables_sort_icon css_right ui-icon ui-icon-carat-2-n-s"></span></div>
            </th>
            <th class="ui-state-default" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 172px;">
              <div class="DataTables_sort_wrapper">Função<span class="DataTables_sort_icon css_right ui-icon ui-icon-carat-2-n-s"></span></div>
            </th>
          </tr>
        </thead>
        <tbody role="alert" aria-live="polite" aria-relevant="all">
          <?php $users = (isset($users)) ? $users : []; ?>
          <?php foreach ($users as $k => $v) { ?>
          <tr class="gradeA odd">
            <td class="sorting_1"><?php echo $v->name; ?></td>
            <td class=""><?php echo $v->email; ?></td>
            <td class=""><?php echo $v->description; ?></td>
            <td class="center"><?php echo $v->function; ?></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
<!--	  <div class="fg-toolbar ui-toolbar ui-widget-header ui-corner-bl ui-corner-br ui-helper-clearfix">-->
<!--		--><?php //echo $pagination; ?>
<!--	  </div>-->
    </div>
  </div>
</div>
