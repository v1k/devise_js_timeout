function DeviseJsTimeoutQuery() {
  $.ajax({
    url: 'session/is_expired',
    dataType: 'json',
    complete: function(response, status) {
      if (((status == 'success') && (JSON.parse(response.responseText)['expired']))
        || ((status == 'error') && (response.status == '401')))
          window.location.reload();
    }
  });
}
setInterval(DeviseJsTimeoutQuery, (60000));