<div class="widget-box">
  <div class="widget-title">
    <span class="icon"><i class="icon-th"></i></span>
    <h5>Usuários encontrados</h5>
  </div>
  <div class="widget-content nopadding">
    <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper" role="grid">
      <div class="">
        <div id="DataTables_Table_0_length" class="dataTables_length">
          <label>
            Mostrar 
            <select size="1" name="DataTables_Table_0_length" aria-controls="DataTables_Table_0">
              <option value="10" selected="selected">10</option>
              <option value="25">25</option>
              <option value="50">50</option>
              <option value="100">100</option>
            </select>
            registros
          </label>
        </div>
      </div>
      <table class="table table-bordered data-table dataTable" id="DataTables_Table_0">
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
      <div class="fg-toolbar ui-toolbar ui-widget-header ui-corner-bl ui-corner-br ui-helper-clearfix">
        <div class="dataTables_filter" id="DataTables_Table_0_filter">
          <label>Search: <input type="text" aria-controls="DataTables_Table_0"></label>
        </div>
        
        <div class="dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers" id="DataTables_Table_0_paginate">
          <a tabindex="0" class="first ui-corner-tl ui-corner-bl fg-button ui-button ui-state-default ui-state-disabled" id="DataTables_Table_0_first">First</a>
          <a tabindex="0" class="previous fg-button ui-button ui-state-default ui-state-disabled" id="DataTables_Table_0_previous">Previous</a>
          <span>
            <a tabindex="0" class="fg-button ui-button ui-state-default ui-state-disabled">1</a>
            <a tabindex="0" class="fg-button ui-button ui-state-default">2</a>
            <a tabindex="0" class="fg-button ui-button ui-state-default">3</a>
            <a tabindex="0" class="fg-button ui-button ui-state-default">4</a>
            <a tabindex="0" class="fg-button ui-button ui-state-default">5</a>
          </span>
          <a tabindex="0" class="next fg-button ui-button ui-state-default" id="DataTables_Table_0_next">Next</a>
          <a tabindex="0" class="last ui-corner-tr ui-corner-br fg-button ui-button ui-state-default" id="DataTables_Table_0_last">Last</a>
        </div>
      </div>
    </div>
  </div>
</div>
