$(document).ready(function()
{
   var body = $('html, body');
   var profiles = $('#profiles');
   var projects = $('#projects');
   var showProfiles = $('#show-profiles');
   var showProjects = $('#show-projects');
   var showMoreProfiles = $('#show-more-profiles');
   var showMoreProjects = $('#show-more-projects');

   // Hide elements
   $('#projects-title, .projects, .more-projects').hide();
   $('#profiles-title, .profiles, .more-profiles').hide();
   $('.more-projects-no-js').hide();
   $('#soleio').hide();

   // Show elements
   showProfiles.show();
   showProjects.show();
   showMoreProfiles.show();
   showMoreProjects.show();

   // Show projects
   showProjects.click( function(e) {
     showProjects.hide();
     $('#projects-title').show();
     $('.projects').fadeIn('slow');
     body.animate({scrollTop: '440px'}, 800);
   });

   // Show profiles
   showProfiles.click( function(e) {
     showProfiles.hide();
     $('#profiles-title').show();
     $('.profiles').fadeIn('slow');
     body.animate({scrollTop: '260px'}, 800);
   });

   // Show more profiles
   showMoreProfiles.click( function(e) {
     $('.more-profiles').fadeIn('slow');
     showMoreProfiles.hide();
     body.animate({scrollTop: '260px'}, 800);
   });

   // Show more projects
   showMoreProjects.click( function(e) {
     $('.more-projects').fadeIn('slow');
     $('.projects').hide();
     showMoreProjects.hide();
     $('#soleio').show();
     body.animate({scrollTop: '440px'}, 800);
   });

   // Annotations
   $('.somenotes').mouseover(function() {
     profiles.css('background', 'url(annotations/somenotes.png) no-repeat 95px 25px');
   }).mouseout(function() {
     profiles.css('background', 'none');
   });
   $('.linkedin').mouseover(function() {
     profiles.css('background', 'url(annotations/linkedin.png) no-repeat 105px 25px');
   }).mouseout(function() {
     profiles.css('background', 'none');
   });
   $('.github').mouseover(function() {
     profiles.css('background', 'url(annotations/github.png) no-repeat 95px 45px');
   }).mouseout(function() {
     profiles.css('background', 'none');
   });
   $('.twitter').mouseover(function() {
     profiles.css('background', 'url(annotations/twitter.png) no-repeat 95px 35px');
   }).mouseout(function() {
     profiles.css('background', 'none');
   });
   $('.zootool').mouseover(function() {
     profiles.css('background', 'url(annotations/zootool.png) no-repeat 100px 65px');
   }).mouseout(function() {
     profiles.css('background', 'none');
   });
   $('.facebook').mouseover(function() {
     profiles.css('background', 'url(annotations/facebook.png) no-repeat 130px 145px');
   }).mouseout(function() {
     profiles.css('background', 'none');
   });
   $('.lastfm').mouseover(function() {
     profiles.css('background', 'url(annotations/lastfm.png) no-repeat 100px 65px');
   }).mouseout(function() {
     profiles.css('background', 'none');
   });
   $('#activo2').mouseover(function() {
     projects.css('background', 'url(annotations/external-link-activo.png) no-repeat 30px bottom');
   }).mouseout(function() {
     projects.css('background', 'none');
   });
   $('#activo').mouseover(function() {
     projects.css('background', 'url(annotations/external-link-old-activo.png) no-repeat 15px bottom');
   }).mouseout(function() {
     projects.css('background', 'none');
   });
   $('#deinnovation').mouseover(function() {
     projects.css('background', 'url(annotations/deinnovation.png) no-repeat 20px bottom');
   }).mouseout(function() {
     projects.css('background', 'none');
   });


   // Lettering.js
   $("#about h1").lettering();


   // jQuery CoverFlip
   $(document).ready(function() {
     $('#flip').jcoverflip({
       time: 200,
       current: 0,
       beforeCss: function(el, container, offset) {
         var offsetMod = offset;
         return [
           $.jcoverflip.animationElement(el, { left: (410 - 10*offset)+'px', bottom: '130px' }, { 0: {'z-index': offsetMod, cursor: 'pointer' } }),
           $.jcoverflip.animationElement(el.find('img'), { width: '160px' }, {})
         ];
       },
       afterCss: function(el, container, offset) {
         var offsetMod = (10 - offset);
         return [
           $.jcoverflip.animationElement(el, { left: (330 + 10*offset)+'px', bottom: '130px' }, { 0: {'z-index': offsetMod, cursor: 'pointer' } }),
           $.jcoverflip.animationElement(el.find('img'), { width: '160px' }, {})
         ];
       },
       currentCss: function(el, container) {
         return [
           $.jcoverflip.animationElement(el, { left: '-5px', bottom: '240px' }, { 0: {'z-index': '11', cursor: 'default' } }),
           $.jcoverflip.animationElement(el.find('img'), { width: '320px' }, { })
         ];
       }
     });
   });
});
