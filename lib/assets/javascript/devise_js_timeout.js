function DeviseJsTimeoutQuery() {
  console.log('!!!')
  $.ajax({
    url: '/is_expired',
    success: function() {
      window.location.href = '/login';
    }
  });
  setTimeout(DeviseJsTimeoutQuery, (60000));
}
setTimeout(DeviseJsTimeoutQuery, (60000));