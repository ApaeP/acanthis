// const stopVideoWhenModalCloses = () => {
//   $(document).ready(function(){
//     /* Get iframe src attribute value i.e. YouTube video url
//     and store it in a variable */
//     var url = $("#cartoonVideo").attr('src');

//     /* Assign empty url value to the iframe src attribute when
//     modal hide, which stop the video playing */
//     $("#videoModal").on('hide.bs.modal', function(){
//         $("#cartoonVideo").attr('src', '');
//     });

//     /* Assign the initially stored url back to the iframe src
//     attribute when modal is displayed again */
//     $("#videoModal").on('show.bs.modal', function(){
//         $("#cartoonVideo").attr('src', url);
//     });
//   });
// };

const passSrcToVideoModal = () => {
  $(document).ready(function() {
    // Gets the video src from the data-src on each button
    var $videoSrc;
    $('.video-btn').click(function() {
      $videoSrc = $(this).data( "src" );
    });
    // when the modal is opened autoplay it
    $('#videodeuxModal').on('shown.bs.modal', function (e) {
    // set the video src to autoplay and not to show related video. Youtube related video is like a box of chocolates... you never know what you're gonna get
    $("#videodeux").attr('src',$videoSrc + "?autoplay=1&amp;modestbranding=1&amp;showinfo=0" );
    });
    // stop playing the youtube video when I close the modal
    $('#videodeuxModal').on('hide.bs.modal', function (e) {
        // a poor man's stop video
        $("#videodeux").attr('src',$videoSrc);
      });
  });
};



export { passSrcToVideoModal };
