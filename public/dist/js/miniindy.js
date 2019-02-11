/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 49);
/******/ })
/************************************************************************/
/******/ ({

/***/ 119:
/***/ (function(module, exports) {

(function ($) {
    $(document).ready(function () {
        // !jQuery Slider
        $('#slides').slides({
            preload: true,
            effect: 'fade',
            crossfade: true,
            play: 5000,
            preloadImage: '/themes/miniindy/images/ajax-loaderHome.gif',
            generateNextPrev: true
        });

        $('.dropdown', document).on('hover', function () {
            var show = 'show';
            $(this).toggleClass(show);
            $(this).find('.dropdown-menu').toggleClass(show);
        });

        $('#RuleList > li, #rulelist > li', document).on('click', function () {
            var allTargets = $(this).closest('ul').find('li');
            allTargets.each(function () {
                $(this).find('ul').hide();
            });
            $(this).find('ul').show();
        });
    });
})(jQuery);

/***/ }),

/***/ 49:
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(50);


/***/ }),

/***/ 50:
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(119);
__webpack_require__(51);
__webpack_require__(52);

/***/ }),

/***/ 51:
/***/ (function(module, exports) {

(function ($) {
    $.fn.simpleMoneyFormat = function () {
        var prefix = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : '$';

        this.each(function (index, el) {
            var elType = null; // input or other
            var value = null;
            // get value
            if ($(el).is('input') || $(el).is('textarea')) {
                value = $(el).val().replace(/,/g, '');
                elType = 'input';
            } else {
                value = $(el).text().replace(/,/g, '');
                elType = 'other';
            }
            // if value changes
            $(el).on('paste keyup', function () {
                value = $(el).val().replace(/,/g, '');
                formatElement(el, elType, value); // format element
            });
            formatElement(el, elType, value); // format element
        });

        function formatElement(el, elType, value) {
            var result = '';
            var valueArray = value.split('');
            var resultArray = [];
            var counter = 0;
            var temp = '';
            for (var i = valueArray.length - 1; i >= 0; i--) {
                temp += valueArray[i];
                counter++;
                if (counter == 3) {
                    resultArray.push(temp);
                    counter = 0;
                    temp = '';
                }
            };
            if (counter > 0) {
                resultArray.push(temp);
            }
            for (var i = resultArray.length - 1; i >= 0; i--) {
                var resTemp = resultArray[i].split('');
                for (var j = resTemp.length - 1; j >= 0; j--) {
                    result += resTemp[j];
                };
                if (i > 0) {
                    result += ',';
                }
            };
            result = prefix + result;
            if (elType == 'input') {
                $(el).val(result);
            } else {
                $(el).empty().text(result);
            }
        }
    };
})(jQuery);

/***/ }),

/***/ 52:
/***/ (function(module, exports) {

(function ($) {

    var price_tags = $('[name="price[]"', document);

    var calculatePrice = function calculatePrice() {

        var total_price = 0,
            total_items = 1,
            qty;

        price_tags.each(function () {

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

    $('#race-price', document).on('change click load', function () {

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
})(jQuery);

/***/ })

/******/ });