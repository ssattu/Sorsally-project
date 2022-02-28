$(function() {
    $('.step__icon').click(function() {
    $('.text-container').hide();
    $('#div' + $(this).attr('target')).show();
   

    $('.steps').on('click', '.step--complete', function() {
      $(this).removeClass('step--inactive').addClass('step--active');

      $(this).removeClass('step--complete').addClass('step--incomplete');
      $(this).nextAll().removeClass('step--active').addClass('step--inactive');
    });

    $('.steps').on('click', '.step--active', function() {
      $(this).removeClass('step--incomplete').addClass('step--complete');
      $(this).removeClass('step--inactive').addClass('step--active');
    });

  }); 
});


