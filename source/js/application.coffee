#
#  Main CoffeeScript file
#
#  David Francisco - @dmfrancisco - http://dmfranc.com
#  Coimbra, Portugal
#
#= require libs/jquery-ui-1.7.2.custom.min
#= require libs/jquery.jcoverflip.min
#= require libs/jquery.lettering.min
#= require libs/detect-mobile-browser.min
#= require libs/matchmedia
#= require libs/picturefill
#= require application


# Prefetch hand-written annotations
prefetch = ->
    image_srcs = [ '/img/annotations/external-link-activo.png', '/img/annotations/external-link-old-activo.png',
                   '/img/annotations/somenotes.png', '/img/annotations/click.png',     '/img/annotations/deinnovation.png',
                   '/img/annotations/facebook.png',  '/img/annotations/github.png',    '/img/annotations/lastfm.png',
                   '/img/annotations/linkedin.png',  '/img/annotations/somenotes.png', '/img/annotations/twitter.png',
                   '/img/annotations/pinboard.png' ]
    isIE = navigator.appName.indexOf('Microsoft') == 0

    for image_src in image_srcs
        if isIE
            (new Image()).src = image_src
            continue

        obj = document.createElement("object")
        obj.data   = image_src
        obj.width  = 0
        obj.height = 0
        document.body.appendChild obj
    return true

# Display hand-written annotations on mouse over
display_annotation = ($container, $el, className) ->
    $el.mouseover(->
        $container.removeClass()
        $container.addClass(className)
    ).mouseout ->
        $container.removeClass()
    return true

$(document).ready ->

    # Common settings
    settings =
        fade_speed:   600  # Fade-in animation duration
        scroll_speed: 800  # Scrolling animation duration
        small_screen: 680  # Max width of small screens
        large_screen: 1024 # Min width of large screens

    # jQuery cache variables
    $body     = $('html, body')
    $profiles =
        section:    $('#profiles')
        title:      $('#profiles h2 span')
        list:       $('#profiles ol')
        more_link:  $("<li />").text("More").addClass("more")
    $projects =
        section:    $('#projects')
        title:      $('#projects h2 span')
        list:       $('#projects ol:first')
        more_link:  $("<li />").text("More").addClass("more")
        thumbnails: $('#flip')

    # Set initial state
    $profiles.list.hide() # Hide contents from profiles and projects lists. This is done here
    $projects.list.hide() # because if JavaScript is disabled, it must be presented to the user
    $profiles.title.addClass("link") # Make subtitles look like links
    $projects.title.addClass("link")
    $("#about h1").lettering() # Apply custom styles to each letter of the main title

    # Prefetch hand-written annotations if its not a small screen
    prefetch() unless $('html').hasClass('mobile')

    # Clicking the profiles' title displays profiles
    $profiles.title.click ->
        $profiles.title.removeClass("link")
        $profiles.list.fadeIn(settings.fade_speed)
        $body.animate({ scrollTop: '380px' }, settings.scroll_speed)

    # Clicking profiles' "more" link displays additional profiles
    $profiles.list.find('li:gt(4)').hide()
    $profiles.list.append($profiles.more_link)
    $profiles.more_link.click ->
        $profiles.list.find('li:gt(4)').fadeIn(settings.fade_speed)
        $profiles.more_link.remove()
        $body.animate({ scrollTop: '380px' }, settings.scroll_speed)

    # Clicking the projects' title displays projects
    showProjects = ->
        $projects.title.removeClass("link")
        $projects.title.text("Some projects I've worked on")
        $projects.list.fadeIn(settings.fade_speed)
        $body.animate({ scrollTop: '890px' }, settings.scroll_speed)

    $projects.title.click(showProjects)

    # Re-style thumbnails on resize
    # Unfortunately, we need to change the currently displayed thumbnail to re-style them all
    doc_width = $(window).width()
    restyleThumbnails = ->
        current_doc_width = doc_width
        doc_width = $(window).width()

        if $projects.list.hasClass("all") and doc_width > settings.small_screen and $projects.thumbnails.is(":visible")
            still_small = current_doc_width <= settings.large_screen and doc_width <= settings.large_screen
            still_large = current_doc_width > settings.large_screen and doc_width > settings.large_screen

            unless still_small or still_large
                $('#flip').jcoverflip('current', $('#flip').jcoverflip('next'))
                $('#flip').jcoverflip('current', $('#flip').jcoverflip('previous'))

    # Clicking projects' "more" link displays additional projects
    resizeTimeout = false
    toggleThumbnails = ->
        clearTimeout(resizeTimeout) if resizeTimeout

        if $projects.list.hasClass("all")
            if $(window).width() <= settings.small_screen and $projects.thumbnails.is(":visible")
                $projects.list.fadeIn(settings.fade_speed)
                $projects.thumbnails.hide()
                $projects.section.removeClass()

            else if $(window).width() > settings.small_screen and $projects.list.is(":visible")
                $projects.list.hide()
                $projects.thumbnails.fadeIn(settings.fade_speed)
                $projects.section.addClass('click')

            else if $(document).width() > settings.small_screen and $projects.thumbnails.is(":visible")
                resizeTimeout = setTimeout(restyleThumbnails, 150)

    $(window).resize(toggleThumbnails)

    $projects.list.find('li:gt(5)').hide()
    $projects.list.append($projects.more_link)

    $projects.more_link.click ->
        $projects.more_link.remove()
        $projects.list.find('li:gt(5)').show()
        $projects.list.addClass("all")
        $body.animate({ scrollTop: '890px' }, settings.scroll_speed)
        toggleThumbnails()

    # Display hand-written annotations
    display_annotation $profiles.section, $(".somenotes"), "somenotes"
    display_annotation $profiles.section, $(".linkedin"),  "linkedin"
    display_annotation $profiles.section, $(".github"),    "github"
    display_annotation $profiles.section, $(".twitter"),   "twitter"
    display_annotation $profiles.section, $(".pinboard"),  "pinboard"
    display_annotation $profiles.section, $(".facebook"),  "facebook"
    display_annotation $profiles.section, $(".lastfm"),    "lastfm"
    display_annotation $projects.section, $("#activo2"),   "activo2"
    display_annotation $projects.section, $("#activo"),    "activo"
    display_annotation $projects.section, $("#deinnovation"), "deinnovation"

    # Initialize cover flip
    $('body').on 'responsiveImagesLoaded', ->
        $('#flip').jcoverflip
            time: 200
            current: 0

            beforeCss: (el, container, offset) ->
                offsetMod = offset
                hOffset = 416
                if $(document).width() > settings.large_screen
                    thumbWidth = '170px'
                    bottomPadding = '34px'
                    hOffset += 70
                else
                    thumbWidth = '130px'
                    bottomPadding = '32px'

                return [$.jcoverflip.animationElement(el, {
                    left: (hOffset - 7 * offset) + 'px',
                    bottom: bottomPadding
                }, {
                    0: {
                        'z-index': offsetMod,
                        cursor: 'pointer'
                    }
                }), $.jcoverflip.animationElement(el.find('img'), {
                    width: thumbWidth
                }, {})]

            afterCss: (el, container, offset) ->
                offsetMod = 13 - offset
                hOffset = 330
                if $(document).width() > settings.large_screen
                    thumbWidth = '170px'
                    bottomPadding = '34px'
                    hOffset += 70
                else
                    thumbWidth = '130px'
                    bottomPadding = '32px'

                return [$.jcoverflip.animationElement(el, {
                    left: (hOffset + 7 * offset) + 'px',
                    bottom: bottomPadding
                }, {
                    0: {
                        'z-index': offsetMod,
                        cursor: 'pointer'
                    }
                }), $.jcoverflip.animationElement(el.find('img'), {
                    width: thumbWidth
                }, {})]

            currentCss: (el, container) ->
                if $(document).width() > settings.large_screen
                    thumbWidth = '395px'
                else
                    thumbWidth = '320px'

                return [$.jcoverflip.animationElement(el, {
                    left: '-5px',
                    bottom: '25px'
                }, {
                    0: {
                        'z-index': '15',
                        cursor: 'default'
                    }
                }), $.jcoverflip.animationElement(el.find('img'), {
                    width: thumbWidth
                }, {})]

    # Stop animated scroll if the user is scrolling (from http://goo.gl/tCjgL)
    $body.bind 'scroll DOMMouseScroll mousewheel', (e) ->
        if e.which > 0 || e.type == "mousedown" || e.type == "mousewheel"
            $body.stop()
