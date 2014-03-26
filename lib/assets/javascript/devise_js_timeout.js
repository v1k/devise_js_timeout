function DeviseJsTimeoutQuery() {
  console.log("!!!")
  $.ajax({
    url: '/is_expired',
    dataType: 'json',
    complete: function(data, status) {
      // if (status == 'error')
      console.log(status)
      console.log(data['expired'])
      if(data['expired'])
        window.location.reload();
    }
  });
}
setInterval(DeviseJsTimeoutQuery, (60000));