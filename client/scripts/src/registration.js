
(function($){
  $(document).ready(function () {
    var $form = $("#form-id");
    var $checkbox = $("#mycheckbox");
    var $addPrice = $("#addPrice,.addPrice");

 	$("#form-id").bind("submit", function(e) {
    // if(!$checkbox.is(":checked")) {
       //alert("Please confirm!");
        //e.preventDefault();
      //}

      // var $golfPrice = $('[name="Price"]').val();
      // var extraPrice = $('[name="Extra"]').val();
      // var NewCarPrice = $('[name="NewCar"]').val();
      // var $racePrice = $('[name="Price2"]').val();
      // var $itemName  = $('[name="item"]').val();
      // var $itemXtra  = $('[name="other"]').val();

      // if($addPrice.is(':checked')){
      //   console.log(this);
      //   $('[name="Price"]').val($racePrice);
      //   $('[name="item"]').val($itemName+$itemXtra);
      // }
      // else{
      //    $('[name="Price"]').val($golfPrice);
      //    $('[name="item"]').val($itemName);
      // }
    });

    $('#addPrice,.addPrice').bind('change', function(e){
      $('#t-price1,#t-price2,#t-price3').hide();
      $('#'+this.id.replace('add-', '')).show();
    });

  });

})(jQuery);
