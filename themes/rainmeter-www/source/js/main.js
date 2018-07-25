$(document).ready(function() {
  $("[data-fancybox]").fancybox({
    toolbar: true,
    buttons: ["fullScreen", "thumbs", "close"],
    smallBtn: false,
    autoFocus: false,
    backFocus: false,
    slideClass: "showcase",
    afterShow: function(instance, slide) {
      // After loading the content, play the content of the slide.
      var video = slide.$content.get(0);
      video.play();
    }
  });
});

$(document).ready(function($) {
  $(".clickable-row").click(function(e) {
    if ($(e.target).is("td")) {
      window.location = $(this).data("href");
    }
  });
});
