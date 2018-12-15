/****** FILE: mysite/javascript/alertForm.js *****/

var $ = jQuery.noConflict();
(function ($) {
    $.checkForBots = function (event) {
        window.isHuman = false;
        $.get('/home/verify', {
            token: window.gToken
        }, function (data) {
            window.isHuman = data.success || data.score > 0;
            return window.isHuman;
        }).always(function () {
            return window.isHuman;
        });
    };
    $("[data-hide]").on("click", function () {
        $("." + $(this).attr("data-hide")).hide();
    });
    var AlertsForm = '#Form_AlertSignUp',
        AlertsEmail = '#Form_AlertSignUp_Email',
        FeedBackForm = '#Form_feedbackForm',
        checkEmailInput = function (email) {
            var regex = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return regex.test(email);
        },
        validateEmail = function (selector, form) {
            $(form + ' .message').html('');
            var email = $(selector).val();
            if (!checkEmailInput(email)) {
                var alert = {
                    'title': 'Error',
                    'type': 'danger',
                    'message': email + ' is not a valid email address!'
                };
                alertMessageBox(alert, '#Form_AlertSignUp');
                return false;
            }
            return true;
        },
        sendMessageBox = function (form) {
            $(form + ' .type').text('')
            $(form + ' .alert').removeClass('alert-success alert-warning alert-danger alert-info alert-primary');
            $(form + ' .alert').addClass('alert-' + alert.type);
            if (alert.title) {
                $(form + ' .type').text(alert.title + '<br>');
            }
            $(form + ' .message').html(alert.message);
            $(form + ' .alert').fadeIn();
            $(form + ' .alert').addClass('alert-info');
            $(form + ' .message').html('<i class="fa fa-spinner fa-pulse"></i> Submitting...');
            $(form + ' .alert').show();
        },
        alertMessageBox = function (alert, form, title) {
            if (alert.type == 'success') alert.title = 'Success';
            if (alert.type == 'warning') alert.title = 'Attention';
            if (alert.type == 'danger') alert.title = 'Error';
            if (alert.type == 'info') alert.title = 'Important';
            if (alert.type == 'primary') alert.title = 'Information';
            $(form)[0].reset();
            $(form + ' .alert').removeClass('alert-success alert-warning alert-danger alert-info alert-primary');
            $(form + ' .alert').addClass('alert-' + alert.type);
            if (title && typeof (title) !== undefined) {
                $(form + ' .type').text(alert.title + '<br>');
            }
            $(form + ' .message').html(alert.message);
            $(form + ' .alert').fadeIn();
        };
    $(AlertsForm).submit(function (e) {
        var valid = validateEmail(AlertsEmail, AlertsForm);
        if (!valid || valid === false) {
            return false;
        }
        sendMessageBox(AlertsForm);
        var action = $(AlertsForm).attr('action');
        $.post('' + action + '', $(this).serializeArray(), function (data) {
            alertMessageBox(JSON.parse(data), AlertsForm);
        });
        e.preventDefault();
    });
    $('#Form_feedbackForm').submit(function (evt) {
        var action = $('#Form_feedbackForm').attr('action');
        $.post('' + action + '', $(this).serializeArray(), function (data) {
            var alert = JSON.parse(data);
            console.log(alert);
            $('#Form_feedbackForm')[0].reset();
            $('#Form_feedbackForm .alert').addClass('alert-' + alert.type);
            $('#Form_feedbackForm .message').append(alert.message);
            $('#Form_feedbackForm .alert').show();
        });
        return false;
    });
    $('#Form_shareForm').submit(function (ev) {
        var action = $('#Form_shareForm').attr('action');
        $.post('' + action + '', $(this).serializeArray(), function (data) {
            var alert = JSON.parse(data);
            var message = data[1] || data,
                type = data[0] || 'danger';
            $('#Form_shareForm')[0].reset();
            $('#Form_shareForm .alert').addClass('alert-' + alert.type);
            $('#Form_shareForm .message').append(alert.message);
            $('#Form_shareForm .alert').show();
        });
        return false;
    });
    $('#Form_Unsubscribe').submit(function () {
        var action = $('#Form_Unsubscribe').attr('action');
        $.post('' + action + '', $(this).serializeArray(), function (data) {
            var alert = JSON.parse(data);
            console.log(alert);
            $('#Form_Unsubscribe').append(data);
        });
        return false;
    });
})(jQuery);;

/****** FILE: themes/master/javascript/compile/underscore.js *****/

(function () {
    var n = this,
        t = n._,
        r = {},
        e = Array.prototype,
        u = Object.prototype,
        i = Function.prototype,
        a = e.push,
        o = e.slice,
        c = e.concat,
        l = u.toString,
        f = u.hasOwnProperty,
        s = e.forEach,
        p = e.map,
        h = e.reduce,
        v = e.reduceRight,
        d = e.filter,
        g = e.every,
        m = e.some,
        y = e.indexOf,
        b = e.lastIndexOf,
        x = Array.isArray,
        _ = Object.keys,
        j = i.bind,
        w = function (n) {
            return n instanceof w ? n : this instanceof w ? (this._wrapped = n, void 0) : new w(n)
        };
    "undefined" != typeof exports ? ("undefined" != typeof module && module.exports && (exports = module.exports = w), exports._ = w) : n._ = w, w.VERSION = "1.4.4";
    var A = w.each = w.forEach = function (n, t, e) {
        if (null != n)
            if (s && n.forEach === s) n.forEach(t, e);
            else if (n.length === +n.length) {
            for (var u = 0, i = n.length; i > u; u++)
                if (t.call(e, n[u], u, n) === r) return
        } else
            for (var a in n)
                if (w.has(n, a) && t.call(e, n[a], a, n) === r) return
    };
    w.map = w.collect = function (n, t, r) {
        var e = [];
        return null == n ? e : p && n.map === p ? n.map(t, r) : (A(n, function (n, u, i) {
            e[e.length] = t.call(r, n, u, i)
        }), e)
    };
    var O = "Reduce of empty array with no initial value";
    w.reduce = w.foldl = w.inject = function (n, t, r, e) {
        var u = arguments.length > 2;
        if (null == n && (n = []), h && n.reduce === h) return e && (t = w.bind(t, e)), u ? n.reduce(t, r) : n.reduce(t);
        if (A(n, function (n, i, a) {
                u ? r = t.call(e, r, n, i, a) : (r = n, u = !0)
            }), !u) throw new TypeError(O);
        return r
    }, w.reduceRight = w.foldr = function (n, t, r, e) {
        var u = arguments.length > 2;
        if (null == n && (n = []), v && n.reduceRight === v) return e && (t = w.bind(t, e)), u ? n.reduceRight(t, r) : n.reduceRight(t);
        var i = n.length;
        if (i !== +i) {
            var a = w.keys(n);
            i = a.length
        }
        if (A(n, function (o, c, l) {
                c = a ? a[--i] : --i, u ? r = t.call(e, r, n[c], c, l) : (r = n[c], u = !0)
            }), !u) throw new TypeError(O);
        return r
    }, w.find = w.detect = function (n, t, r) {
        var e;
        return E(n, function (n, u, i) {
            return t.call(r, n, u, i) ? (e = n, !0) : void 0
        }), e
    }, w.filter = w.select = function (n, t, r) {
        var e = [];
        return null == n ? e : d && n.filter === d ? n.filter(t, r) : (A(n, function (n, u, i) {
            t.call(r, n, u, i) && (e[e.length] = n)
        }), e)
    }, w.reject = function (n, t, r) {
        return w.filter(n, function (n, e, u) {
            return !t.call(r, n, e, u)
        }, r)
    }, w.every = w.all = function (n, t, e) {
        t || (t = w.identity);
        var u = !0;
        return null == n ? u : g && n.every === g ? n.every(t, e) : (A(n, function (n, i, a) {
            return (u = u && t.call(e, n, i, a)) ? void 0 : r
        }), !!u)
    };
    var E = w.some = w.any = function (n, t, e) {
        t || (t = w.identity);
        var u = !1;
        return null == n ? u : m && n.some === m ? n.some(t, e) : (A(n, function (n, i, a) {
            return u || (u = t.call(e, n, i, a)) ? r : void 0
        }), !!u)
    };
    w.contains = w.include = function (n, t) {
        return null == n ? !1 : y && n.indexOf === y ? n.indexOf(t) != -1 : E(n, function (n) {
            return n === t
        })
    }, w.invoke = function (n, t) {
        var r = o.call(arguments, 2),
            e = w.isFunction(t);
        return w.map(n, function (n) {
            return (e ? t : n[t]).apply(n, r)
        })
    }, w.pluck = function (n, t) {
        return w.map(n, function (n) {
            return n[t]
        })
    }, w.where = function (n, t, r) {
        return w.isEmpty(t) ? r ? null : [] : w[r ? "find" : "filter"](n, function (n) {
            for (var r in t)
                if (t[r] !== n[r]) return !1;
            return !0
        })
    }, w.findWhere = function (n, t) {
        return w.where(n, t, !0)
    }, w.max = function (n, t, r) {
        if (!t && w.isArray(n) && n[0] === +n[0] && 65535 > n.length) return Math.max.apply(Math, n);
        if (!t && w.isEmpty(n)) return -1 / 0;
        var e = {
            computed: -1 / 0,
            value: -1 / 0
        };
        return A(n, function (n, u, i) {
            var a = t ? t.call(r, n, u, i) : n;
            a >= e.computed && (e = {
                value: n,
                computed: a
            })
        }), e.value
    }, w.min = function (n, t, r) {
        if (!t && w.isArray(n) && n[0] === +n[0] && 65535 > n.length) return Math.min.apply(Math, n);
        if (!t && w.isEmpty(n)) return 1 / 0;
        var e = {
            computed: 1 / 0,
            value: 1 / 0
        };
        return A(n, function (n, u, i) {
            var a = t ? t.call(r, n, u, i) : n;
            e.computed > a && (e = {
                value: n,
                computed: a
            })
        }), e.value
    }, w.shuffle = function (n) {
        var t, r = 0,
            e = [];
        return A(n, function (n) {
            t = w.random(r++), e[r - 1] = e[t], e[t] = n
        }), e
    };
    var k = function (n) {
        return w.isFunction(n) ? n : function (t) {
            return t[n]
        }
    };
    w.sortBy = function (n, t, r) {
        var e = k(t);
        return w.pluck(w.map(n, function (n, t, u) {
            return {
                value: n,
                index: t,
                criteria: e.call(r, n, t, u)
            }
        }).sort(function (n, t) {
            var r = n.criteria,
                e = t.criteria;
            if (r !== e) {
                if (r > e || r === void 0) return 1;
                if (e > r || e === void 0) return -1
            }
            return n.index < t.index ? -1 : 1
        }), "value")
    };
    var F = function (n, t, r, e) {
        var u = {},
            i = k(t || w.identity);
        return A(n, function (t, a) {
            var o = i.call(r, t, a, n);
            e(u, o, t)
        }), u
    };
    w.groupBy = function (n, t, r) {
        return F(n, t, r, function (n, t, r) {
            (w.has(n, t) ? n[t] : n[t] = []).push(r)
        })
    }, w.countBy = function (n, t, r) {
        return F(n, t, r, function (n, t) {
            w.has(n, t) || (n[t] = 0), n[t]++
        })
    }, w.sortedIndex = function (n, t, r, e) {
        r = null == r ? w.identity : k(r);
        for (var u = r.call(e, t), i = 0, a = n.length; a > i;) {
            var o = i + a >>> 1;
            u > r.call(e, n[o]) ? i = o + 1 : a = o
        }
        return i
    }, w.toArray = function (n) {
        return n ? w.isArray(n) ? o.call(n) : n.length === +n.length ? w.map(n, w.identity) : w.values(n) : []
    }, w.size = function (n) {
        return null == n ? 0 : n.length === +n.length ? n.length : w.keys(n).length
    }, w.first = w.head = w.take = function (n, t, r) {
        return null == n ? void 0 : null == t || r ? n[0] : o.call(n, 0, t)
    }, w.initial = function (n, t, r) {
        return o.call(n, 0, n.length - (null == t || r ? 1 : t))
    }, w.last = function (n, t, r) {
        return null == n ? void 0 : null == t || r ? n[n.length - 1] : o.call(n, Math.max(n.length - t, 0))
    }, w.rest = w.tail = w.drop = function (n, t, r) {
        return o.call(n, null == t || r ? 1 : t)
    }, w.compact = function (n) {
        return w.filter(n, w.identity)
    };
    var R = function (n, t, r) {
        return A(n, function (n) {
            w.isArray(n) ? t ? a.apply(r, n) : R(n, t, r) : r.push(n)
        }), r
    };
    w.flatten = function (n, t) {
        return R(n, t, [])
    }, w.without = function (n) {
        return w.difference(n, o.call(arguments, 1))
    }, w.uniq = w.unique = function (n, t, r, e) {
        w.isFunction(t) && (e = r, r = t, t = !1);
        var u = r ? w.map(n, r, e) : n,
            i = [],
            a = [];
        return A(u, function (r, e) {
            (t ? e && a[a.length - 1] === r : w.contains(a, r)) || (a.push(r), i.push(n[e]))
        }), i
    }, w.union = function () {
        return w.uniq(c.apply(e, arguments))
    }, w.intersection = function (n) {
        var t = o.call(arguments, 1);
        return w.filter(w.uniq(n), function (n) {
            return w.every(t, function (t) {
                return w.indexOf(t, n) >= 0
            })
        })
    }, w.difference = function (n) {
        var t = c.apply(e, o.call(arguments, 1));
        return w.filter(n, function (n) {
            return !w.contains(t, n)
        })
    }, w.zip = function () {
        for (var n = o.call(arguments), t = w.max(w.pluck(n, "length")), r = Array(t), e = 0; t > e; e++) r[e] = w.pluck(n, "" + e);
        return r
    }, w.object = function (n, t) {
        if (null == n) return {};
        for (var r = {}, e = 0, u = n.length; u > e; e++) t ? r[n[e]] = t[e] : r[n[e][0]] = n[e][1];
        return r
    }, w.indexOf = function (n, t, r) {
        if (null == n) return -1;
        var e = 0,
            u = n.length;
        if (r) {
            if ("number" != typeof r) return e = w.sortedIndex(n, t), n[e] === t ? e : -1;
            e = 0 > r ? Math.max(0, u + r) : r
        }
        if (y && n.indexOf === y) return n.indexOf(t, r);
        for (; u > e; e++)
            if (n[e] === t) return e;
        return -1
    }, w.lastIndexOf = function (n, t, r) {
        if (null == n) return -1;
        var e = null != r;
        if (b && n.lastIndexOf === b) return e ? n.lastIndexOf(t, r) : n.lastIndexOf(t);
        for (var u = e ? r : n.length; u--;)
            if (n[u] === t) return u;
        return -1
    }, w.range = function (n, t, r) {
        1 >= arguments.length && (t = n || 0, n = 0), r = arguments[2] || 1;
        for (var e = Math.max(Math.ceil((t - n) / r), 0), u = 0, i = Array(e); e > u;) i[u++] = n, n += r;
        return i
    }, w.bind = function (n, t) {
        if (n.bind === j && j) return j.apply(n, o.call(arguments, 1));
        var r = o.call(arguments, 2);
        return function () {
            return n.apply(t, r.concat(o.call(arguments)))
        }
    }, w.partial = function (n) {
        var t = o.call(arguments, 1);
        return function () {
            return n.apply(this, t.concat(o.call(arguments)))
        }
    }, w.bindAll = function (n) {
        var t = o.call(arguments, 1);
        return 0 === t.length && (t = w.functions(n)), A(t, function (t) {
            n[t] = w.bind(n[t], n)
        }), n
    }, w.memoize = function (n, t) {
        var r = {};
        return t || (t = w.identity),
            function () {
                var e = t.apply(this, arguments);
                return w.has(r, e) ? r[e] : r[e] = n.apply(this, arguments)
            }
    }, w.delay = function (n, t) {
        var r = o.call(arguments, 2);
        return setTimeout(function () {
            return n.apply(null, r)
        }, t)
    }, w.defer = function (n) {
        return w.delay.apply(w, [n, 1].concat(o.call(arguments, 1)))
    }, w.throttle = function (n, t) {
        var r, e, u, i, a = 0,
            o = function () {
                a = new Date, u = null, i = n.apply(r, e)
            };
        return function () {
            var c = new Date,
                l = t - (c - a);
            return r = this, e = arguments, 0 >= l ? (clearTimeout(u), u = null, a = c, i = n.apply(r, e)) : u || (u = setTimeout(o, l)), i
        }
    }, w.debounce = function (n, t, r) {
        var e, u;
        return function () {
            var i = this,
                a = arguments,
                o = function () {
                    e = null, r || (u = n.apply(i, a))
                },
                c = r && !e;
            return clearTimeout(e), e = setTimeout(o, t), c && (u = n.apply(i, a)), u
        }
    }, w.once = function (n) {
        var t, r = !1;
        return function () {
            return r ? t : (r = !0, t = n.apply(this, arguments), n = null, t)
        }
    }, w.wrap = function (n, t) {
        return function () {
            var r = [n];
            return a.apply(r, arguments), t.apply(this, r)
        }
    }, w.compose = function () {
        var n = arguments;
        return function () {
            for (var t = arguments, r = n.length - 1; r >= 0; r--) t = [n[r].apply(this, t)];
            return t[0]
        }
    }, w.after = function (n, t) {
        return 0 >= n ? t() : function () {
            return 1 > --n ? t.apply(this, arguments) : void 0
        }
    }, w.keys = _ || function (n) {
        if (n !== Object(n)) throw new TypeError("Invalid object");
        var t = [];
        for (var r in n) w.has(n, r) && (t[t.length] = r);
        return t
    }, w.values = function (n) {
        var t = [];
        for (var r in n) w.has(n, r) && t.push(n[r]);
        return t
    }, w.pairs = function (n) {
        var t = [];
        for (var r in n) w.has(n, r) && t.push([r, n[r]]);
        return t
    }, w.invert = function (n) {
        var t = {};
        for (var r in n) w.has(n, r) && (t[n[r]] = r);
        return t
    }, w.functions = w.methods = function (n) {
        var t = [];
        for (var r in n) w.isFunction(n[r]) && t.push(r);
        return t.sort()
    }, w.extend = function (n) {
        return A(o.call(arguments, 1), function (t) {
            if (t)
                for (var r in t) n[r] = t[r]
        }), n
    }, w.pick = function (n) {
        var t = {},
            r = c.apply(e, o.call(arguments, 1));
        return A(r, function (r) {
            r in n && (t[r] = n[r])
        }), t
    }, w.omit = function (n) {
        var t = {},
            r = c.apply(e, o.call(arguments, 1));
        for (var u in n) w.contains(r, u) || (t[u] = n[u]);
        return t
    }, w.defaults = function (n) {
        return A(o.call(arguments, 1), function (t) {
            if (t)
                for (var r in t) null == n[r] && (n[r] = t[r])
        }), n
    }, w.clone = function (n) {
        return w.isObject(n) ? w.isArray(n) ? n.slice() : w.extend({}, n) : n
    }, w.tap = function (n, t) {
        return t(n), n
    };
    var I = function (n, t, r, e) {
        if (n === t) return 0 !== n || 1 / n == 1 / t;
        if (null == n || null == t) return n === t;
        n instanceof w && (n = n._wrapped), t instanceof w && (t = t._wrapped);
        var u = l.call(n);
        if (u != l.call(t)) return !1;
        switch (u) {
            case "[object String]":
                return n == t + "";
            case "[object Number]":
                return n != +n ? t != +t : 0 == n ? 1 / n == 1 / t : n == +t;
            case "[object Date]":
            case "[object Boolean]":
                return +n == +t;
            case "[object RegExp]":
                return n.source == t.source && n.global == t.global && n.multiline == t.multiline && n.ignoreCase == t.ignoreCase
        }
        if ("object" != typeof n || "object" != typeof t) return !1;
        for (var i = r.length; i--;)
            if (r[i] == n) return e[i] == t;
        r.push(n), e.push(t);
        var a = 0,
            o = !0;
        if ("[object Array]" == u) {
            if (a = n.length, o = a == t.length)
                for (; a-- && (o = I(n[a], t[a], r, e)););
        } else {
            var c = n.constructor,
                f = t.constructor;
            if (c !== f && !(w.isFunction(c) && c instanceof c && w.isFunction(f) && f instanceof f)) return !1;
            for (var s in n)
                if (w.has(n, s) && (a++, !(o = w.has(t, s) && I(n[s], t[s], r, e)))) break;
            if (o) {
                for (s in t)
                    if (w.has(t, s) && !a--) break;
                o = !a
            }
        }
        return r.pop(), e.pop(), o
    };
    w.isEqual = function (n, t) {
        return I(n, t, [], [])
    }, w.isEmpty = function (n) {
        if (null == n) return !0;
        if (w.isArray(n) || w.isString(n)) return 0 === n.length;
        for (var t in n)
            if (w.has(n, t)) return !1;
        return !0
    }, w.isElement = function (n) {
        return !(!n || 1 !== n.nodeType)
    }, w.isArray = x || function (n) {
        return "[object Array]" == l.call(n)
    }, w.isObject = function (n) {
        return n === Object(n)
    }, A(["Arguments", "Function", "String", "Number", "Date", "RegExp"], function (n) {
        w["is" + n] = function (t) {
            return l.call(t) == "[object " + n + "]"
        }
    }), w.isArguments(arguments) || (w.isArguments = function (n) {
        return !(!n || !w.has(n, "callee"))
    }), "function" != typeof /./ && (w.isFunction = function (n) {
        return "function" == typeof n
    }), w.isFinite = function (n) {
        return isFinite(n) && !isNaN(parseFloat(n))
    }, w.isNaN = function (n) {
        return w.isNumber(n) && n != +n
    }, w.isBoolean = function (n) {
        return n === !0 || n === !1 || "[object Boolean]" == l.call(n)
    }, w.isNull = function (n) {
        return null === n
    }, w.isUndefined = function (n) {
        return n === void 0
    }, w.has = function (n, t) {
        return f.call(n, t)
    }, w.noConflict = function () {
        return n._ = t, this
    }, w.identity = function (n) {
        return n
    }, w.times = function (n, t, r) {
        for (var e = Array(n), u = 0; n > u; u++) e[u] = t.call(r, u);
        return e
    }, w.random = function (n, t) {
        return null == t && (t = n, n = 0), n + Math.floor(Math.random() * (t - n + 1))
    };
    var M = {
        escape: {
            "&": "&amp;",
            "<": "&lt;",
            ">": "&gt;",
            '"': "&quot;",
            "'": "&#x27;",
            "/": "&#x2F;"
        }
    };
    M.unescape = w.invert(M.escape);
    var S = {
        escape: RegExp("[" + w.keys(M.escape).join("") + "]", "g"),
        unescape: RegExp("(" + w.keys(M.unescape).join("|") + ")", "g")
    };
    w.each(["escape", "unescape"], function (n) {
        w[n] = function (t) {
            return null == t ? "" : ("" + t).replace(S[n], function (t) {
                return M[n][t]
            })
        }
    }), w.result = function (n, t) {
        if (null == n) return null;
        var r = n[t];
        return w.isFunction(r) ? r.call(n) : r
    }, w.mixin = function (n) {
        A(w.functions(n), function (t) {
            var r = w[t] = n[t];
            w.prototype[t] = function () {
                var n = [this._wrapped];
                return a.apply(n, arguments), D.call(this, r.apply(w, n))
            }
        })
    };
    var N = 0;
    w.uniqueId = function (n) {
        var t = ++N + "";
        return n ? n + t : t
    }, w.templateSettings = {
        evaluate: /<%([\s\S]+?)%>/g,
        interpolate: /<%=([\s\S]+?)%>/g,
        escape: /<%-([\s\S]+?)%>/g
    };
    var T = /(.)^/,
        q = {
            "'": "'",
            "\\": "\\",
            "\r": "r",
            "\n": "n",
            " ": "t",
            "\u2028": "u2028",
            "\u2029": "u2029"
        },
        B = /\\|'|\r|\n|\t|\u2028|\u2029/g;
    w.template = function (n, t, r) {
        var e;
        r = w.defaults({}, r, w.templateSettings);
        var u = RegExp([(r.escape || T).source, (r.interpolate || T).source, (r.evaluate || T).source].join("|") + "|$", "g"),
            i = 0,
            a = "__p+='";
        n.replace(u, function (t, r, e, u, o) {
            return a += n.slice(i, o).replace(B, function (n) {
                return "\\" + q[n]
            }), r && (a += "'+\n((__t=(" + r + "))==null?'':_.escape(__t))+\n'"), e && (a += "'+\n((__t=(" + e + "))==null?'':__t)+\n'"), u && (a += "';\n" + u + "\n__p+='"), i = o + t.length, t
        }), a += "';\n", r.variable || (a = "with(obj||{}){\n" + a + "}\n"), a = "var __t,__p='',__j=Array.prototype.join," + "print=function(){__p+=__j.call(arguments,'');};\n" + a + "return __p;\n";
        try {
            e = Function(r.variable || "obj", "_", a)
        } catch (o) {
            throw o.source = a, o
        }
        if (t) return e(t, w);
        var c = function (n) {
            return e.call(this, n, w)
        };
        return c.source = "function(" + (r.variable || "obj") + "){\n" + a + "}", c
    }, w.chain = function (n) {
        return w(n).chain()
    };
    var D = function (n) {
        return this._chain ? w(n).chain() : n
    };
    w.mixin(w), A(["pop", "push", "reverse", "shift", "sort", "splice", "unshift"], function (n) {
        var t = e[n];
        w.prototype[n] = function () {
            var r = this._wrapped;
            return t.apply(r, arguments), "shift" != n && "splice" != n || 0 !== r.length || delete r[0], D.call(this, r)
        }
    }), A(["concat", "join", "slice"], function (n) {
        var t = e[n];
        w.prototype[n] = function () {
            return D.call(this, t.apply(this._wrapped, arguments))
        }
    }), w.extend(w.prototype, {
        chain: function () {
            return this._chain = !0, this
        },
        value: function () {
            return this._wrapped
        }
    })
}).call(this);;

/****** FILE: themes/master/javascript/compile/matchHeight.js *****/

(function (c) {
    var n = -1,
        f = -1,
        g = function (a) {
            return parseFloat(a) || 0
        },
        r = function (a) {
            var b = null,
                d = [];
            c(a).each(function () {
                var a = c(this),
                    k = a.offset().top - g(a.css("margin-top")),
                    l = 0 < d.length ? d[d.length - 1] : null;
                null === l ? d.push(a) : 1 >= Math.floor(Math.abs(b - k)) ? d[d.length - 1] = l.add(a) : d.push(a);
                b = k
            });
            return d
        },
        p = function (a) {
            var b = {
                byRow: !0,
                property: "height",
                target: null,
                remove: !1
            };
            if ("object" === typeof a) return c.extend(b, a);
            "boolean" === typeof a ? b.byRow = a : "remove" === a && (b.remove = !0);
            return b
        },
        b = c.fn.matchHeight = function (a) {
            a = p(a);
            if (a.remove) {
                var e = this;
                this.css(a.property, "");
                c.each(b._groups, function (a, b) {
                    b.elements = b.elements.not(e)
                });
                return this
            }
            if (1 >= this.length && !a.target) return this;
            b._groups.push({
                elements: this,
                options: a
            });
            b._apply(this, a);
            return this
        };
    b._groups = [];
    b._throttle = 80;
    b._maintainScroll = !1;
    b._beforeUpdate = null;
    b._afterUpdate = null;
    b._apply = function (a, e) {
        var d = p(e),
            h = c(a),
            k = [h],
            l = c(window).scrollTop(),
            f = c("html").outerHeight(!0),
            m = h.parents().filter(":hidden");
        m.each(function () {
            var a = c(this);
            a.data("style-cache", a.attr("style"))
        });
        m.css("display", "block");
        d.byRow && !d.target && (h.each(function () {
            var a = c(this),
                b = a.css("display");
            "inline-block" !== b && "inline-flex" !== b && (b = "block");
            a.data("style-cache", a.attr("style"));
            a.css({
                display: b,
                "padding-top": "0",
                "padding-bottom": "0",
                "margin-top": "0",
                "margin-bottom": "0",
                "border-top-width": "0",
                "border-bottom-width": "0",
                height: "100px"
            })
        }), k = r(h), h.each(function () {
            var a = c(this);
            a.attr("style", a.data("style-cache") || "")
        }));
        c.each(k, function (a, b) {
            var e = c(b),
                f = 0;
            if (d.target) f = d.target.outerHeight(!1);
            else {
                if (d.byRow && 1 >= e.length) {
                    e.css(d.property, "");
                    return
                }
                e.each(function () {
                    var a = c(this),
                        b = a.css("display");
                    "inline-block" !== b && "inline-flex" !== b && (b = "block");
                    b = {
                        display: b
                    };
                    b[d.property] = "";
                    a.css(b);
                    a.outerHeight(!1) > f && (f = a.outerHeight(!1));
                    a.css("display", "")
                })
            }
            e.each(function () {
                var a = c(this),
                    b = 0;
                d.target && a.is(d.target) || ("border-box" !== a.css("box-sizing") && (b += g(a.css("border-top-width")) + g(a.css("border-bottom-width")), b += g(a.css("padding-top")) + g(a.css("padding-bottom"))), a.css(d.property, f - b + "px"))
            })
        });
        m.each(function () {
            var a = c(this);
            a.attr("style", a.data("style-cache") || null)
        });
        b._maintainScroll && c(window).scrollTop(l / f * c("html").outerHeight(!0));
        return this
    };
    b._applyDataApi = function () {
        var a = {};
        c("[data-match-height], [data-mh]").each(function () {
            var b = c(this),
                d = b.attr("data-mh") || b.attr("data-match-height");
            a[d] = d in a ? a[d].add(b) : b
        });
        c.each(a, function () {
            this.matchHeight(!0)
        })
    };
    var q = function (a) {
        b._beforeUpdate && b._beforeUpdate(a, b._groups);
        c.each(b._groups, function () {
            b._apply(this.elements, this.options)
        });
        b._afterUpdate && b._afterUpdate(a, b._groups)
    };
    b._update = function (a, e) {
        if (e && "resize" === e.type) {
            var d = c(window).width();
            if (d === n) return;
            n = d
        }
        a ? -1 === f && (f = setTimeout(function () {
            q(e);
            f = -1
        }, b._throttle)) : q(e)
    };
    c(b._applyDataApi);
    c(window).bind("load", function (a) {
        b._update(!1, a)
    });
    c(window).bind("resize orientationchange", function (a) {
        b._update(!0, a)
    })
})(jQuery);;

/****** FILE: themes/master/javascript/compile/stock-quote.js *****/

var $ = jQuery.noConflict();
(function ($) {
    var now = new Date();
    var now_utc = new Date(now.getUTCFullYear(), now.getUTCMonth(), now.getUTCDate(), now.getUTCHours(), now.getUTCMinutes(), now.getUTCSeconds());
    var hour = now_utc.getHours() - 4;
    var interval = (hour >= 9 && hour <= 18) ? 300000 : 43200000;
    var symbol = ($(".stock").attr('id') || 'SKYW').toUpperCase(),
        TodaysDate, LastTime;
    var month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
    var YHOOApi = 'http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20IN%20(%22' + symbol + '%22)&format=json&env=http://datatables.org/alltables.env';
    var yahooapi = 'http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20(%27' + symbol + '%27)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys';
    var setTime = function (time) {
            var timeParts = [],
                hh, mm, ss = '00';
            if (time.indexOf('pm') > -1) {
                timeParts = time.replace('pm', '').split(':');
                hh = Math.round(parseInt(timeParts[0]) + 12);
                mm = parseInt(timeParts[1]);
            }
            if (time.indexOf('am') > -1) {
                timeParts = time.replace('am', '').split(':');
                hh = parseInt(timeParts[0] >= 10 ? timeParts[0] : "0" + timeParts[0]);
                mm = parseInt(timeParts[1]);
            }
            var NewTime = parseInt(hh + '' + mm);
            return NewTime > LastTime || LastTime === undefined ? LastTime = NewTime : false;
        },
        displayStockQuote = function (stockQuote) {
            var stockSymbol = stockQuote.stockSymbol || stockQuote["col0"] || stockQuote[0];
            var TradePrice = stockQuote.TradePrice || stockQuote["col1"] || stockQuote[1];
            var XchangeDate = stockQuote.XchangeDate || stockQuote["col2"] || stockQuote[2];
            var ChartDate = stockQuote.ChartDate || stockQuote["col3"] || stockQuote[3];
            var ChartTime = stockQuote.ChartTime || stockQuote["col4"] || stockQuote[4];
            var Change = stockQuote.Change || stockQuote["col5"] || stockQuote[5];
            var OpenPrice = stockQuote.OpenPrice || stockQuote["col6"] || stockQuote[6];
            var DaysHigh = stockQuote.DaysHigh || stockQuote["col7"] || stockQuote[7];
            var DaysLow = stockQuote.DaysLow || stockQuote["col8"] || stockQuote[8];
            var Volume = stockQuote.Volume || stockQuote["col9"] || stockQuote[9];
            var LastClose = stockQuote.LastClose || stockQuote["col10"] || stockQuote[10];
            var YearHigh = stockQuote.YearHigh || stockQuote["col11"] || stockQuote[11];
            var YearLow = stockQuote.YearLow || stockQuote["col12"] || stockQuote[12];
            var Percent = stockQuote.Percent || stockQuote["col13"] || stockQuote[13];
            var MarketCap = stockQuote.MarketCap || stockQuote["col14"] || stockQuote[14];
            var PERatio = stockQuote.PERatio || stockQuote["col15"] || stockQuote[15];
            var Dividend = stockQuote.Dividend || stockQuote["col16"] || stockQuote[16];
            var XChange = stockQuote.XChange || stockQuote["col17"] || stockQuote[17];
            var Positive = Change > 0;
            Change = (Math.round(Change * 100) / 100).toFixed(2);
            $('#stock-symbol').html(stockSymbol);
            $('#stock-exchange-date').html(XchangeDate);
            $('#stock-chart-date').html(ChartDate);
            $('#stock-exchange-time,#stock-chart-time').html(ChartTime + ' EST');
            $('#stock-quote-price').html(parseFloat(TradePrice).toFixed(2));
            $('#stock-chart-price').html(parseFloat(TradePrice).toFixed(2)).addClass(function () {
                return Positive ? 'text-success' : 'text-danger';
            });
            $('#stock-open-price,#stock-chart-open').html(parseFloat(OpenPrice).toFixed(2));
            $('#stock-market-cap').html(MarketCap);
            $('#stock-high-price,#stock-chart-high').html(parseFloat(DaysHigh).toFixed(2));
            $('#stock-low-price,#stock-chart-low').html(parseFloat(DaysLow).toFixed(2));
            $('#stock-pe-ratio').html(PERatio);
            $('#stock-chart-volume').html(parseFloat(Volume).toFixed(2));
            $('#stock-prev-close').html(parseFloat(LastClose).toFixed(2));
            $('#stock-year-high').html(parseFloat(YearHigh).toFixed(2));
            $('#stock-year-low').html(parseFloat(YearLow).toFixed(2));
            $('#stock-divid-yield').html(Dividend);
            $('#stock-chg-percent').html(Percent);
            $('#stock-quote-diff,#stock-chart-diff,#stock-chg-percent').removeClass('text-default text-danger text-default');
            if (Change === 0 || Change == '0.000') {
                $('#stock-quote-arrow').addClass('text-default').html('');
                $('#stock-quote-diff,#stock-chart-diff').addClass('text-default').html('0.00 (0.00%)');
                $('#stock-chg-percent').addClass('text-default').html("(" + Percent + ")");
            } else if (Change != null && Change > 0) {
                $('#stock-quote-arrow').addClass('text-success').html('<i class="fa fa-arrow-up"></i>');
                $('#stock-quote-diff,#stock-chart-diff').addClass('text-success').html(Change);
                $('#stock-chg-percent').addClass('text-success').html("(" + Percent + ")");
            } else {
                $('#stock-quote-arrow').addClass('text-danger').html('<i class="fa fa-arrow-down"></i>');
                $('#stock-quote-diff,#stock-chart-diff').addClass('text-danger').html(Change);
                $('#stock-chg-percent').addClass('text-danger').html("(" + Percent + ")");
            }
        },
        getUserQuote = function (ticker) {
            $url = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20csv%20where%20url%3D'http%3A%2F%2Fdownload.finance.yahoo.com%2Fd%2Fquotes.csv%3Fs%3DSKYW%26f%3Dsl1d1d1t1c1ohgvpkjp2j1rdx%26e%3D.csv'&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys";
            $.ajax({
                url: $url,
                type: 'GET',
                cache: false,
                data: {
                    'symbol': ticker
                },
                dataType: 'json',
                success: function (json) {
                    stockQuote = json.query.results.row;
                    displayStockQuote(stockQuote);
                }
            });
        },
        getQuote = function (ticker) {
            $.ajax({
                url: 'http://inc.skywest.com/mysite/javascript/data/stock-quotes.json',
                type: 'GET',
                cache: false,
                data: {
                    'symbol': ticker
                },
                dataType: 'json'
            }).done(function (json, status, xhr) {
                var stockQuote = json[0];
                if (stockQuote == null) {
                    return getUserQuote(ticker);
                }
                displayStockQuote(stockQuote);
            }).fail(function (json, status, xhr) {}).always(function (json, status, xhr) {});
        },
        getData = function (ticker) {
            $.ajax({
                url: YHOOApi,
                cache: false,
                type: 'GET',
                data: {
                    'Symbol': ticker || symbol
                }
            }).done(function (data) {
                var stockQuote = data.query.results.quote;
                if (typeof (stockQuote) === typeof (undefined) || stockQuote === false) {
                    return;
                }
                var TradeSymbol = stockQuote.symbol.toUpperCase();
                var LastTradePrice = parseFloat(stockQuote.LastTradePriceOnly).toFixed(2);
                var MarketCap = parseFloat(stockQuote.MarketCapitalization).toFixed(1);
                var OpenPrice = parseFloat(stockQuote.Open).toFixed(2);
                var TradePrice = parseFloat(stockQuote.LastTradePriceOnly).toFixed(2);
                var DaysHigh = parseFloat(stockQuote.DaysHigh).toFixed(2);
                var DaysLow = parseFloat(stockQuote.DaysLow).toFixed(2);
                var YearHigh = parseFloat(stockQuote.YearHigh).toFixed(2);
                var YearLow = parseFloat(stockQuote.YearLow).toFixed(2);
                var Volume = parseFloat(stockQuote.Volume).toFixed(2);
                var PERatio = parseFloat(stockQuote.PERatio).toFixed(2);
                var Dividend = parseFloat(stockQuote.DividendYield).toFixed(2) + '%';
                var Change = parseFloat(stockQuote.Change).toFixed(2);
                var Percent = parseFloat(stockQuote.ChangeinPercent).toFixed(2);
                var LastClose = parseFloat(stockQuote.PreviousClose).toFixed(2);
                var LastTradeDate = new Date(stockQuote.LastTradeDate);
                var LastTradeTime = stockQuote.LastTradeTime;
                var percentChange = Change + ' (' + Percent + '%)';
                var Positive = stockQuote.Change && stockQuote.Change > 0;
                var TradeTime = LastTradeTime.substr(0, LastTradeTime.length - 2) + ' ' + LastTradeTime.substr(-2).toUpperCase();
                var XchangeDate = (month[LastTradeDate.getUTCMonth()]).substring(0, 3) + ' ' + LastTradeDate.getUTCDate();
                var ChartDate = month[LastTradeDate.getUTCMonth()] + ' ' + LastTradeDate.getUTCDate();
                var stockChartTime = ' ' + LastTradeTime.substr(0, LastTradeTime.length - 2) + ' ' + LastTradeTime.substr(-2).toUpperCase() + ' ET';
                var isJustLoaded = $('#stock-quote-price').html() == '00.00';
                var isYesterdays = LastTradeDate.getDate() != new Date().getDate();
                var previousTime = Date.parse(stockChartTime.replace(' ET', ''));
                if (!isJustLoaded && isYesterdays) return;
                $('#stock-symbol').html(TradeSymbol);
                $('#stock-exchange-date').html(XchangeDate);
                $('#stock-chart-date').html(ChartDate);
                $('#stock-exchange-time,#stock-chart-time').html(stockChartTime);
                $('#stock-quote-price').html(TradePrice);
                $('#stock-chart-price').html(TradePrice).addClass(function () {
                    return Positive ? 'text-success' : 'text-danger';
                });
                $('#stock-open-price,#stock-chart-open').html(OpenPrice);
                $('#stock-market-cap').html(MarketCap);
                $('#stock-high-price,#stock-chart-high').html(DaysHigh);
                $('#stock-low-price,#stock-chart-low').html(DaysLow);
                $('#stock-pe-ratio').html(PERatio);
                $('#stock-chart-volume').html(Volume);
                $('#stock-prev-close').html(LastClose);
                $('#stock-year-high').html(YearHigh > DaysHigh ? YearHigh : DaysHigh);
                $('#stock-year-low').html(YearLow < DaysLow ? YearLow : DaysLow);
                $('#stock-divid-yield').html(Dividend);
                $('#stock-exchange').html(Xchange);
                if (Change === 0) {
                    $('#stock-quote-arrow').addClass('text-default').html('');
                    $('#stock-quote-diff,#stock-chart-diff').addClass('text-default').html('0.00 (0.00%)');
                } else if (stockQuote.Change && stockQuote.Change > 0) {
                    $('#stock-quote-arrow').addClass('text-success').html('<i class="fa fa-arrow-up"></i>');
                    $('#stock-quote-diff,#stock-chart-diff').addClass('text-success').html(percentChange);
                } else {
                    $('#stock-quote-arrow').addClass('text-danger').html('<i class="fa fa-arrow-down"></i>');
                    $('#stock-quote-diff,#stock-chart-diff').addClass('text-danger').html(percentChange);
                }
            }).fail(function (json, status, xhr) {});
        };
    getQuote('SKYW');
    setInterval(getQuote, interval);
})(jQuery);
(function ($) {
    var Markit = {};
    Markit.InteractiveChartApi = function (symbol, duration) {
        this.symbol = symbol.toUpperCase();
        this.duration = duration;
        this.PlotChart();
    };
    Markit.InteractiveChartApi.prototype.PlotChart = function () {
        var params = {
            parameters: JSON.stringify(this.getInputParams())
        };
        $.ajax({
            beforeSend: function () {
                $("#stock-chart").text("Loading chart...");
            },
            data: params,
            url: "http://dev.markitondemand.com/Api/v2/InteractiveChart/jsonp",
            dataType: "jsonp",
            context: this,
            success: function (json) {
                if (!json || json.Message) {
                    return;
                }
                this.render(json);
            },
            error: function (response, txtStatus) {}
        });
    };
    Markit.InteractiveChartApi.prototype.getInputParams = function () {
        return {
            Normalized: false,
            NumberOfDays: this.duration,
            DataPeriod: "Day",
            Elements: [{
                Symbol: this.symbol,
                Type: "price",
                Params: ["ohlc"]
            }, {
                Symbol: this.symbol,
                Type: "volume"
            }],
            LabelPeriod: 'Week',
            LabelInterval: 1
        };
    };
    Markit.InteractiveChartApi.prototype._fixDate = function (dateIn) {
        var dat = new Date(dateIn);
        return Date.UTC(dat.getUTCFullYear(), dat.getUTCMonth(), dat.getUTCDate());
    };
    Markit.InteractiveChartApi.prototype._getOHLC = function (json) {
        var dates = json.Dates || [];
        var elements = json.Elements || [];
        var chartSeries = [];
        if (elements[0]) {
            for (var i = 0, datLen = dates.length; i < datLen; i++) {
                var dat = this._fixDate(dates[i]);
                var pointData = [dat, elements[0].DataSeries.close.values[i], elements[0].DataSeries.open.values[i], elements[0].DataSeries.high.values[i], elements[0].DataSeries.low.values[i]];
                chartSeries.push(pointData);
            }
        }
        return chartSeries;
    };
    Markit.InteractiveChartApi.prototype._getVolume = function (json) {
        var dates = json.Dates || [];
        var elements = json.Elements || [];
        var chartSeries = [];
        if (elements[1]) {
            for (var i = 0, datLen = dates.length; i < datLen; i++) {
                var dat = this._fixDate(dates[i]);
                var pointData = [dat, elements[1].DataSeries.volume.values[i]];
                chartSeries.push(pointData);
            }
        }
        return chartSeries;
    };
    Markit.InteractiveChartApi.prototype.render = function (data) {
        var ohlc = this._getOHLC(data),
            volume = this._getVolume(data);
        var groupingUnits = [
            ['week', [1]],
            ['month', [1, 2, 3, 4, 6]]
        ];
        $('#stock-chart').highcharts('StockChart', {
            rangeSelector: {
                selected: 3
            },
            tooltip: {
                valueDecimals: 2,
                borderRadius: 5
            },
            yAxis: [{
                title: {
                    text: ''
                },
                lineWidth: 1
            }],
            exporting: {
                enabled: false
            },
            series: [{
                type: 'line',
                name: this.symbol,
                color: '#002e6d',
                data: ohlc,
                dataGrouping: {
                    units: groupingUnits
                }
            }],
            credits: {
                enabled: false
            },
            navigator: {
                enabled: false
            },
            scrollbar: {
                enabled: false
            }
        });
    };
    $(function () {
        var newChart = function () {
            var sym = 'SKYW';
            var dur = 3650;
            new Markit.InteractiveChartApi(sym, dur);
        };
        setTimeout(newChart, 500);
    });
})(jQuery);;

/****** FILE: themes/master/javascript/compile/main-scripts.js *****/

var $ = jQuery.noConflict();

function debounce(func, wait, immediate) {
    var timeout;
    return function () {
        var context = this,
            args = arguments,
            later = function () {
                timeout = null;
                if (!immediate) func.apply(context, args);
            },
            callNow = immediate && !timeout;
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
        if (callNow) func.apply(context, args);
    };
};
(function ($) {
    var StockChartSize = debounce(function () {
        var StockQuote = $('#stock-chart').parent(),
            quoteWidth = StockQuote.width(),
            quoteHeight = quoteWidth * 0.5625,
            StockChart = $('#stock-chart-tool'),
            chartWidth = StockChart.width(),
            chartHeight = chartWidth * 0.75;
        StockQuote.css('height', quoteHeight + 'px');
        StockChart.css('height', chartHeight + 'px');
    }, 250);
    $(window).on('load resize', StockChartSize);
    var checkBrowserWidth = debounce(function () {
        if ($(this).width() < 960) {
            $('#mobileNotReady').modal({
                keyboard: false
            });
        }
    }, 250);
    $(window).on('load', checkBrowserWidth);
    $(window).on('resize', checkBrowserWidth);
    var PositionNav = debounce(function () {
        var ddMenu = $('#main-nav .dropdown-menu'),
            lastScrollTop = 0,
            ddTopPosition = $('nav#main-nav').position().top + $('nav#main-nav').outerHeight(true);
        var st = $(this).scrollTop(),
            newPosition = $('nav#main-nav').position().top + $('nav#main-nav').outerHeight(true);
        if (st > lastScrollTop) {
            ddMenu.css('top', (ddTopPosition - st - 1) + 'px');
        } else {
            ddMenu.css('top', (ddTopPosition + st - 1) + 'px');
        }
        ddMenu.on('click', function (event) {
            event.stopPropagation();
        });
    }, 250);
    $(document).on('scroll', PositionNav);
    $(window).on('load resize', PositionNav);
    var matchColumnHeights = debounce(function () {
        if ($(this).width() > $('.eq-ht-cols').width() + 25) {
            $('.eq-ht-cols').matchHeight(false);
            $('.eq-ht-box').matchHeight(false);
            $('.tab-content').each(function () {
                $(this).children('.eq-ht-tabs').matchHeight(false);
            });
        }
    }, 250);
    $(window).on('load', matchColumnHeights);
    $(window).on('resize', matchColumnHeights);
    $('.eq-ht-cols a, .eq-ht-box a').on('click', function () {
        setTimeout(function () {
            $(this).matchHeight._update()
        });
    });
})(jQuery);
$(function () {
    $('.navbar#main-nav .dropdown').hover(function () {
        $(this).addClass('open');
    }, function () {
        $(this).removeClass('open');
    });
    $('.navbar#mobile-nav .dropdown').on('click', function () {
        $('.dropdown.open').removeClass('open');
    });
});
(function ($) {
    $.fn.switchClass = function (options) {
        var options = {};
        var swOptions = options.classes || $(this).data('switchClass') || $(this).data('options');
        var swTrigger = options.trigger || $(this).data('trigger') || 'click';
        var condition = options.condition || $(this).data('switchOn') || 'hidden shown';
        $(this).on(swTrigger, function (ev) {
            ev.preventDefault();
            $(this).toggleClass(swOptions);
        });
    };
    $.fn.hoverText = function () {
        $(this).hover(function () {
            $(this).find('.hover-text').show();
        }, function () {
            $(this).find('.hover-text').hide();
        });
    };
})(jQuery);
(function ($) {
    $.fn.paginator = function (PageNo) {
        var Paginate = $('#paginator');
        var prevBtn = $('[data-page-prev]');
        var nextBtn = $('[data-page-next]');
        var allPages = $('#paginator').data('pageCount');
        var thisPage = PageNo || $('[data-page].active').data('page');
        if (allPages == 1 || thisPage == allPages) {
            nextBtn.hide();
        } else {
            nextBtn.show();
        }
        if (thisPage == 1 || allPages == 1) {
            prevBtn.hide();
        } else {
            prevBtn.show();
        }
    };
    $('[data-page-num]').click(function () {
        $(this).paginator($(this).data('pageNum'));
    });
    $('#paginator').paginator();
    $.fn.pageNext = function () {
        $(this).click(function (e) {
            e.preventDefault();
            var PageNo = Math.floor($('[data-page].active').data('page') + 1);
            $('a[href="#page-no-' + PageNo + '"]').tab('show');
            $(this).paginator(PageNo);
        });
    };
    $('[data-page-next]').pageNext();
    $.fn.pagePrev = function () {
        $(this).click(function (e) {
            e.preventDefault();
            var PageNo = Math.floor($('[data-page].active').data('page') - 1);
            $('a[href="#page-no-' + PageNo + '"]').tab('show');
            $(this).paginator(PageNo);
        });
    };
    $('[data-page-prev]').pagePrev();
    $.fn.switchText = function (texts, action) {
        var action = $(this).data('switchOn') || 'click';
        var context = $(this).closest('[href]').attr('href') || $(this).closest('[data-target]').attr('data-target');
        $(this).on(action, function () {
            var dsText = texts || $(this).data('switchText');
            var options = dsText.split(',');
            var text = $(this);
            var newText = ($(this).text() == options[0]) ? options[1] : options[0];
            return $(this).text(newText);
        });
        if ($(context).hasClass('collapsing')) {
            return $(this).text('...');
        }
    };
    (function ($) {
        var classes = $('[data-toggle-class]').data('toggleClass');
        if (typeof (classes) !== typeof undefined) thisClass = classes.split(' ');
        var swapRouteMapText = function () {
            if ($('.toggle-all,.toggle-one').hasClass(thisClass[0])) {
                $('.routeMapText').hide();
            } else {}
        };
        $('.toggle-one').click(function () {
            thisClass = classes.split(' ');
            if ($(this).hasClass(thisClass[1])) {
                $('.toggle-all').removeClass(thisClass[1]).addClass(thisClass[0]);
            };
            $(this).toggleClass(classes);
            if ($('[data-target="#EV"]').hasClass('fa-toggle-on') && $('[data-target="#OO"]').hasClass('fa-toggle-on')) {
                $('.toggle-all').removeClass(thisClass[1]).addClass(thisClass[0]);
            } else {
                $('.toggle-all').removeClass(thisClass[0]).addClass(thisClass[1]);
            }
            swapRouteMapText();
        });
        $('.toggle-all').click(function () {
            thisClass = classes.split(' ');
            $(this).toggleClass(classes);
            if ($(this).hasClass(thisClass[0])) {
                $('.toggle-one').removeClass(thisClass[1]).addClass(thisClass[0]);
                $('.toggled').collapse('show');
            } else {
                $('.toggle-one').removeClass(thisClass[0]).addClass(thisClass[1]);
                $('.toggled').collapse('hide');
            }
            swapRouteMapText();
        });
    })(jQuery);
    $.fn.switchClasses = function () {
        $(this).click(function () {
            var target1 = $(this).closest('[data-toggle="collapse"]').find('[data-switch-class]'),
                target2 = $(this).closest('[data-switch-class]'),
                classes = target1.data('switchClass') || target2.data('switchClass');
            target1.toggleClass(classes);
            target2.toggleClass(classes);
        });
    };
})(jQuery);
var $ = jQuery.noConflict();
(function () {
    $('.colorPicker li, .colorPicker a').click(function () {});
})();
(function ($) {
    $('[data-switch-class],[data-toggle="collapse"]').switchClasses();
    $('[data-switch-text]').switchText();
    $('[data-toggle="tooltip"]').tooltip();
    $('[data-target="#mySurvey"]').hoverText();
})(jQuery);
(function ($) {
    $('.login > p').addClass('text-center');
    $('form#MemberLoginForm_LoginForm').addClass('from-horizontal');
    $('#MemberLoginForm_LoginForm_error').addClass('alert alert-danger text-center');
    $('form#MemberLoginForm_LoginForm #Email').addClass('form-group');
    $('form#MemberLoginForm_LoginForm #Password').addClass('form-group');
    $('form#MemberLoginForm_LoginForm #Remember').addClass('checkbox').css('padding-left', 20 + 'px');
    $('form#MemberLoginForm_LoginForm input[type=text]').addClass('form-control');
    $('form#MemberLoginForm_LoginForm input[type=password]').addClass('form-control');
    $('form#MemberLoginForm_LoginForm input[type=checkbox]').removeClass('checkbox');
    $('form#MemberLoginForm_LoginForm input[type="submit"]').addClass('btn btn-block btn-info');
    $.fn.equalHeights = function (theParent) {
        var $this = $(this);
        var maxHeight = $this.parents(theParent).height();
        $this.each(function () {
            var height = $(this).innerHeight();
            if (height > maxHeight) {
                maxHeight = height;
            }
        });
        return $this.css('height', maxHeight);
    };
    $('[data-equal]').each(function () {
        var $this = $(this),
            target = $this.data('equal'),
            thisPar = $this.data('parent');
        $this.find(target).equalHeights(thisPar);
    });
    $('.switch-state').on('switchChange.btSwitch', function (event, state) {});
})(jQuery);
(function ($) {
    var Message = $('#emailShare #message');
    var Content = $('#emailShare #user-content');
    Message.html(Content.val());
    Message.keyup(function (event) {
        Content.html($(this).val());
    });
    $('[data-page-prev],[data-page-next],[data-page-num]').click(function () {
        $(window).scrollTop(0);
    });
})(jQuery);;
