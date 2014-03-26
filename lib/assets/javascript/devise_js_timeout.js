function DeviseJsTimeoutQuery() {
  $.ajax({
    url: '/is_expired',
    dataType: 'json',
    complete: function(data, status) {
      console.log status
      if(data['expired'])
        window.location.reload();
    }
  });
}
setInterval(DeviseJsTimeoutQuery, (60000));