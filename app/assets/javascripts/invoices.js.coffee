$ ->
  $('#items-table').DataTable
    processing: true
    serverSide: true
    ajax: $('#items-table').data('source')
    pagingType: 'full_numbers'
