(function($) {

    var price_tags = $('[name="price[]"]', document);

    var calculatePrice = function() {

        var total_price = 0,
            total_items = 1,
            qty;

        price_tags.each(function() {

            if (qty === undefined) {
                qty = $(this).closest('form').find('[name="Qty"]');
            }

            var thisValue = $(this).val();

            if ($(this).is(':checkbox') && !$(this).prop('checked')) {
                thisValue = 0;
            }
            total_price += parseInt(thisValue);
        });

        if (qty !== undefined) {
            total_items = parseInt(qty.last().val()) || 1;
        }

        total_price = total_price * total_items;
        $('#total-price', document).val(total_price);

        var displayPrice = $('#display-price', document);
        displayPrice.val(total_price).simpleMoneyFormat();

    };

    $('#race-price', document).on('change click load', function() {

        var carPricer = $('#car-price', document);
        var raceIsOn = $(this).prop('checked');

        if (raceIsOn) {
            carPricer.prop('disabled', false);
        } else {
            carPricer.prop('disabled', true);
            carPricer.prop('checked', false);
        }
    });

    $(document).ready(calculatePrice);

    price_tags.on('change click', calculatePrice);

    $('#register-miniindy', document).on('submit', function(e) {
        // e.preventDefault();
        var inputFields = $(this).serializeArray();
        console.log(inputFields);
    });


})(jQuery);