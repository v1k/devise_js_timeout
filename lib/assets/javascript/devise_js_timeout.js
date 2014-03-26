function DeviseJsTimeoutQuery() {
  console.log("!!!");
  $.ajax({
    url: '/is_expired',
    dataType: 'json',
    complete: function(response, status) {
      if (status == 'success')
        console.log(JSON.parse(response.responseText)['expired']);
      // if(data['expired'])
      //   window.location.reload();
    }
  });
}
setInterval(DeviseJsTimeoutQuery, (60000));