$(document).ready(function(){
    $(document).on('click', '.imgleft', function(){
        var src = $(this).attr('src');

        $('#imgrecept').attr('src', src);
        return false;
    });
});

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#imgrecept').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
    }
}

$("#imgInp").change(function(){
    readURL(this);
});