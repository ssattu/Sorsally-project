$(function() {
    $('.step__icon').click(function() {
    $('.text-container').hide();
    $('#div' + $(this).attr('target')).show();
   

    $('.steps').on('click', '.step--complete', function() {
      $(this).next().removeClass('step--inactive').addClass('step--active');

      $(this).nextAll().removeClass('step--complete').addClass('step--incomplete');
      $(this).next().nextAll().removeClass('step--active').addClass('step--inactive');
    });

    $('.steps').on('click', '.step--active', function() {
      $(this).removeClass('step--incomplete').addClass('step--complete');
      $(this).next().removeClass('step--inactive').addClass('step--active');
    });

  }); 
});


