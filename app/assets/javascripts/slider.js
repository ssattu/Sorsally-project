$(function() {
    $('.step__icon').click(function() {
    $('.text-container').hide();
    $('#div' + $(this).attr('target')).show();

    $('.steps').on('click', '.step--active', function() {
      $(this).removeClass('step--incomplete').addClass('step--complete');
      $(this).children().children().removeClass(' ownership-svg-incomplete ownership-svg-inactive').addClass('ownership-svg-active');

      $(this).next().removeClass('step--inactive').addClass('step--active');
    });

    $('.steps').on('click', '.step--complete', function() {
      $(this).next().removeClass('step--inactive').addClass('step--active');
      $(this).children().children().removeClass(' ownership-svg-active').addClass('ownership-svg-inactive');

      $(this).nextAll().removeClass('step--complete').addClass('step--incomplete');
      $(this).next().nextAll().removeClass('step--active').addClass('step--inactive');
    });
  }); 
});


console.log(2332)