function DeviseJsTimeoutQuery() {
  $.ajax({
    url: '/is_expired',
    dataType: 'json',
    complete: function(response, status) {
      // if ((status == 'success') && (JSON.parse(response.responseText)['expired']))
      //   || ((status == 'error') && )
      //     window.location.reload();
      console.log(response.status)
    }
  });
}
setInterval(DeviseJsTimeoutQuery, (60000));