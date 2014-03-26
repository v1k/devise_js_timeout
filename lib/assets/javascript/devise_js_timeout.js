function DeviseJsTimeoutQuery() {
  console.log('!!!')
  $.ajax({
    url: '/is_expired',
    dataType: 'json',
    success: function(data) {
      if(data['expired'])
        window.location.reload();
    }
  });
  setTimeout(DeviseJsTimeoutQuery, (60000));
}
setTimeout(DeviseJsTimeoutQuery, (60000));