$(window).on('load', function() {
    const checkbox = $('input[type="checkbox"]');
    checkbox.checkboxradio('refresh');
    checkbox.on('change', function () {
        $(this).checkboxradio('refresh');
    })
    $('.ui-content').css('height', '90vh');
})
