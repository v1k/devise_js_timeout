function DeviseJsTimeoutQuery() {
  console.log('!!!')
  $.ajax({
    url: '/is_active',
    type: 'json',
    success: function() {
      window.location.href = '/login';
    }
  });
  setTimeout(DeviseJsTimeoutQuery, (60000));
}
setTimeout(DeviseJsTimeoutQuery, (60000));