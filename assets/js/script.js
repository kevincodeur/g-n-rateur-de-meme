

function readURL(input) {
    if (input.files && input.files[0] ) {
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

$('#input_txt_top').on('input',function(e){
    $("#text-top").html($(this).val())
});

$('#input_txt_bottom').on('input',function(e){
    $("#text-bottom").html($(this).val())
});


$('#imgInp').click(function(){
    $('.txthdispnone').show();
    $('#hiddenp').hide();
    $('#hero').show();
    $('#superhero').show();
    $('#megahero').show();
});

