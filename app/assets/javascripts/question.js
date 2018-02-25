function disableCheck() {
    $('.edit_question').on('change', 'input', function() {
        $('#submit').removeAttr('disabled');
    });
}

function makeCountdown() {
    var seconds = 6;
    var counter = setInterval(function () {
        seconds--;
        if (seconds > 0) {
            $('#countdown').html(seconds);
        } else {
            $('#countdown').html(seconds);
            clearInterval(counter);
            $.ajax({
                type: 'PATCH',
                beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
                url: "/answers/" + $('#answer_id').val(),
                data: {
                    question_id: $('#question_id').val()
                }
            })
        }
    }, 1000);
}

disableCheck();
makeCountdown();

