$('.slider').slick({
  dots: false,
  speed: 300,
  slidesToShow: 5,
  slidesToScroll: 1,
  infinite : true,
  nextArrow : '<img class="right-arrow" src="assets/img/right-arrow.svg" alt="">',
  prevArrow : '<img class="left-arrow" src="assets/img/left-arrow.svg" alt="">',
  responsive: [
  {
    breakpoint: 1500,
    settings: {
      slidesToShow: 5,
      infinite: true,

    }
  },
  {
    breakpoint: 1399,
    settings: {
      slidesToShow: 5,
      infinite: true,

    }
  },
  {
    breakpoint: 1180,
    settings: {
      slidesToShow: 3,
      infinite: true,

    }
  },
  {
    breakpoint: 792,
    settings: {
      slidesToShow: 2,
      infinite: true,
    }
  },
  {
    breakpoint: 494,
    settings: {
      slidesToShow: 1,
      infinite: true,
    }
  }
  ]
});

$('.slider-2').slick({
  dots: false,
  speed: 300,
  slidesToShow: 1,
  slidesToScroll: 1,
  infinite : true,
  nextArrow : '<img class="right-arrow" src="assets/img/right-arrow.svg" alt="">',
  prevArrow : '<img class="left-arrow" src="assets/img/left-arrow.svg" alt="">',
});