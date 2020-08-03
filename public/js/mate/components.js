"use strict";
(function(a) {
    a.addTest("svg-transforms", function() {
        var c = ["-moz-", "-ms-", "-webkit-", ""],
            e = c.reduce(function(i, j) {
                return i + j + "transform: translateX(10px); "
            }, ""),
            b = document.querySelector("body"),
            d = document.createElementNS("http://www.w3.org/2000/svg", "svg"),
            g = document.createElementNS("http://www.w3.org/2000/svg", "path");
        d.appendChild(g);
        d.style.cssText = "width: 100px; visibility: transparent;";
        b.appendChild(d);
        var f = g.getBoundingClientRect();
        g.style.cssText = e;
        var h = g.getBoundingClientRect();
        b.removeChild(d);
        return f.left != h.left
    })
})(window.Modernizr);
$("body").removeClass("no-js");
$("[data-href]").click(function() {
    thisdata = $(this).attr("data-href");
    window.location.href = thisdata
});
$(window).resize(function() {
    clearTimeout(a);
    var a;
    a = setTimeout(function() {
        Waypoint.refreshAll
    }, 100)
}).resize();
document.addEventListener("visibilitychange", function() {
    if (document.visibility != "hidden") {
        Waypoint.refreshAll
    }
});
document.addEventListener("DOMContentLoaded", function() {
    var a = document.querySelector("video");
    if (a) {
        a.loop = true;
        var b = a.play();
        if (b instanceof Promise) {
            $("html").addClass("inlineplay")
        } else {
            $("html").addClass("no-inlineplay")
        }
    }
});
var refreshTimer = setInterval(function() {
    Waypoint.refreshAll
}, 5000);
$(document).ready(function() {
    var a = setInterval(function() {
        Waypoint.refreshAll
    }, 5000);
    $(".animation-block:not(.animation2)").each(function() {
        var b = $(this);
        var d = b.waypoint({
            offset: "80%",
            handler: function(e) {
                b.addClass("animated")
            }
        });/*
        var c = b.waypoint({
            offset: function() {
                return -this.element.clientHeight
            },
            handler: function(e) {
                b.addClass("animated")
            }
        })*/
    });
    $(".animation2").each(function() {
        var b = $(this);
        var d = b.waypoint({
            offset: 1500,
            handler: function(e) {
                b.addClass("animated")
            }
        });
    });
    $(".component:not(.component2)").each(function() {
        var c = $(this);
        var b = c.waypoint({
            offset: "200%",
            handler: function(e) {
                if (e === "down") {
                    c.addClass("shown")
                } else {
                    c.removeClass("shown");
                    c.find(".animation-block").removeClass("animated")
                }
            }
        });/*
        var d = c.waypoint({
            offset: function() {
                return -this.element.clientHeight * 1.5
            },
            handler: function(e) {
                if (e === "down") {
                    c.removeClass("shown");
                    c.find(".animation-block").removeClass("animated")
                } else {
                    c.addClass("shown")
                }
            }
        })*/
    });
    $(".component2").each(function() {
        var c = $(this);
        var b = c.waypoint({
            offset: "500%",
            handler: function(e) {
                if (e === "down") {
                    c.addClass("shown")
                } else {
                    c.removeClass("shown");
                    c.find(".animation-block").removeClass("animated")
                }
            }
        });/*
        var d = c.waypoint({
            offset: function() {
                return -this.element.clientHeight * 1.5
            },
            handler: function(e) {
                if (e === "down") {
                    c.removeClass("shown");
                    c.find(".animation-block").removeClass("animated")
                } else {
                    c.addClass("shown")
                }
            }
        })*/
    })
});
var mobileWidth = 600;
if ($(window).width() < 546) {
    $(document).find('[data-parallax*= \'{"y": 100, "distance": 1200, "smoothness": 10}\']').each(function() {
        $(this).attr("data-parallax", '{"y": 50, "distance": 600, "smoothness": 10}')
    })
}
$(function() {
    ParallaxScroll.init()
});
var ParallaxScroll = {
    showLogs: false,
    round: 1000,
    init: function() {
        this._log("init");
        if (this._inited) {
            this._log("Already Inited");
            this._inited = true;
            return
        }
        this._requestAnimationFrame = (function() {
            return window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function(b, a) {
                window.setTimeout(b, 1000 / 60)
            }
        })();
        this._onScroll(true)
    },
    _inited: false,
    _properties: ["x", "y", "z", "rotateX", "rotateY", "rotateZ", "scaleX", "scaleY", "scaleZ", "scale"],
    _requestAnimationFrame: null,
    _log: function(a) {
        if (this.showLogs) {
            console.log("Parallax Scroll / " + a)
        }
    },
    _onScroll: function(b) {
        var a = $(document).scrollTop();
        var c = $(window).height();
        this._log("onScroll " + a);
        $("[data-parallax]").each($.proxy(function(l, d) {
            var A = $(d);
            var m = [];
            var r = false;
            var u = A.data("style");
            if (u == undefined) {
                u = A.attr("style") || "";
                A.data("style", u)
            }
            var x = [A.data("parallax")];
            var C;
            for (C = 2;; C++) {
                if (A.data("parallax" + C)) {
                    x.push(A.data("parallax-" + C))
                } else {
                    break
                }
            }
            var n = x.length;
            for (C = 0; C < n; C++) {
                var z = x[C];
                var i = z["from-scroll"];
                if (i == undefined) {
                    i = Math.max(0, $(d).offset().top - c)
                }
                i = i | 0;
                var o = z.distance;
                var f = z["to-scroll"];
                if (o == undefined && f == undefined) {
                    o = c
                }
                o = Math.max(o | 0, 1);
                var s = z.easing;
                var t = z["easing-return"];
                if (s == undefined || !$.easing || !$.easing[s]) {
                    s = null
                }
                if (t == undefined || !$.easing || !$.easing[t]) {
                    t = s
                }
                if (s) {
                    var k = z.duration;
                    if (k == undefined) {
                        k = o
                    }
                    k = Math.max(k | 0, 1);
                    var B = z["duration-return"];
                    if (B == undefined) {
                        B = k
                    }
                    o = 1;
                    var w = A.data("current-time");
                    if (w == undefined) {
                        w = 0
                    }
                }
                if (f == undefined) {
                    f = i + o
                }
                f = f | 0;
                var e = z.smoothness;
                if (e == undefined) {
                    e = 30
                }
                e = e | 0;
                if (b || e == 0) {
                    e = 1
                }
                e = e | 0;
                var v = a;
                v = Math.max(v, i);
                v = Math.min(v, f);
                if (s) {
                    if (A.data("sens") == undefined) {
                        A.data("sens", "back")
                    }
                    if (v > i) {
                        if (A.data("sens") == "back") {
                            w = 1;
                            A.data("sens", "go")
                        } else {
                            w++
                        }
                    }
                    if (v < f) {
                        if (A.data("sens") == "go") {
                            w = 1;
                            A.data("sens", "back")
                        } else {
                            w++
                        }
                    }
                    if (b) {
                        w = k
                    }
                    A.data("current-time", w)
                }
                this._properties.map($.proxy(function(J) {
                    var D = 0;
                    var I = z[J];
                    if (I == undefined) {
                        return
                    }
                    if (J == "scale" || J == "scaleX" || J == "scaleY" || J == "scaleZ") {
                        D = 1
                    } else {
                        I = I | 0
                    }
                    var F = A.data("_" + J);
                    if (F == undefined) {
                        F = D
                    }
                    var E = ((I - D) * ((v - i) / (f - i))) + D;
                    var G = F + (E - F) / e;
                    if (s && w > 0 && w <= k) {
                        var H = D;
                        if (A.data("sens") == "back") {
                            H = I;
                            I = -I;
                            s = t;
                            k = B
                        }
                        G = $.easing[s](null, w, H, I, k)
                    }
                    G = Math.ceil(G * this.round) / this.round;
                    if (G == F && E == I) {
                        G = I
                    }
                    if (!m[J]) {
                        m[J] = 0
                    }
                    m[J] += G;
                    if (F != m[J]) {
                        A.data("_" + J, m[J]);
                        r = true
                    }
                }, this))
            }
            if (r) {
                if (m.z != undefined) {
                    var q = z.perspective;
                    if (q == undefined) {
                        q = 800
                    }
                    var p = A.parent();
                    if (!p.data("style")) {
                        p.data("style", p.attr("style") || "")
                    }
                    p.attr("style", "perspective:" + q + "px; -webkit-perspective:" + q + "px; " + p.data("style"))
                }
                if (m.scaleX == undefined) {
                    m.scaleX = 1
                }
                if (m.scaleY == undefined) {
                    m.scaleY = 1
                }
                if (m.scaleZ == undefined) {
                    m.scaleZ = 1
                }
                if (m.scale != undefined) {
                    m.scaleX *= m.scale;
                    m.scaleY *= m.scale;
                    m.scaleZ *= m.scale
                }
                var y = "translate3d(" + (m.x ? m.x : 0) + "px, " + (m.y ? m.y : 0) + "px, " + (m.z ? m.z : 0) + "px)";
                var j = "rotateX(" + (m.rotateX ? m.rotateX : 0) + "deg) rotateY(" + (m.rotateY ? m.rotateY : 0) + "deg) rotateZ(" + (m.rotateZ ? m.rotateZ : 0) + "deg)";
                var h = "scaleX(" + m.scaleX + ") scaleY(" + m.scaleY + ") scaleZ(" + m.scaleZ + ")";
                var g = y + " " + j + " " + h + ";";
                this._log(g);
                A.attr("style", "transform:" + g + " -webkit-transform:" + g + " " + u)
            }
        }, this));
        if (window.requestAnimationFrame) {
            window.requestAnimationFrame($.proxy(this._onScroll, this, false))
        } else {
            this._requestAnimationFrame($.proxy(this._onScroll, this, false))
        }
    }
};
/*!
Waypoints - 4.0.1
Copyright Â© 2011-2016 Caleb Troughton
Licensed under the MIT license.
https://github.com/imakewebthings/waypoints/blob/master/licenses.txt
*/
;
! function() {
    function b(d) {
        if (!d) {
            throw new Error("No options passed to Waypoint constructor")
        }
        if (!d.element) {
            throw new Error("No element option passed to Waypoint constructor")
        }
        if (!d.handler) {
            throw new Error("No handler option passed to Waypoint constructor")
        }
        this.key = "waypoint-" + c, this.options = b.Adapter.extend({}, b.defaults, d), this.element = this.options.element, this.adapter = new b.Adapter(this.element), this.callback = d.handler, this.axis = this.options.horizontal ? "horizontal" : "vertical", this.enabled = this.options.enabled, this.triggerPoint = null, this.group = b.Group.findOrCreate({
            name: this.options.group,
            axis: this.axis
        }), this.context = b.Context.findOrCreateByElement(this.options.context), b.offsetAliases[this.options.offset] && (this.options.offset = b.offsetAliases[this.options.offset]), this.group.add(this), this.context.add(this), a[this.key] = this, c += 1
    }
    var c = 0,
        a = {};
    b.prototype.queueTrigger = function(d) {
        this.group.queueTrigger(this, d)
    }, b.prototype.trigger = function(d) {
        this.enabled && this.callback && this.callback.apply(this, d)
    }, b.prototype.destroy = function() {
        this.context.remove(this), this.group.remove(this), delete a[this.key]
    }, b.prototype.disable = function() {
        return this.enabled = !1, this
    }, b.prototype.enable = function() {
        return this.context.refresh(), this.enabled = !0, this
    }, b.prototype.next = function() {
        return this.group.next(this)
    }, b.prototype.previous = function() {
        return this.group.previous(this)
    }, b.invokeAll = function(d) {
        var g = [];
        for (var h in a) {
            g.push(a[h])
        }
        for (var i = 0, f = g.length; f > i; i++) {
            g[i][d]()
        }
    }, b.destroyAll = function() {
        b.invokeAll("destroy")
    }, b.disableAll = function() {
        b.invokeAll("disable")
    }, b.enableAll = function() {
        b.Context.refreshAll();
        for (var d in a) {
            a[d].enabled = !0
        }
        return this
    }, b.refreshAll = function() {
        b.Context.refreshAll()
    }, b.viewportHeight = function() {
        return window.innerHeight || document.documentElement.clientHeight
    }, b.viewportWidth = function() {
        return document.documentElement.clientWidth
    }, b.adapters = [], b.defaults = {
        context: window,
        continuous: !0,
        enabled: !0,
        group: "default",
        horizontal: !1,
        offset: 0
    }, b.offsetAliases = {
        "bottom-in-view": function() {
            return this.context.innerHeight() - this.adapter.outerHeight()
        },
        "right-in-view": function() {
            return this.context.innerWidth() - this.adapter.outerWidth()
        }
    }, window.Waypoint = b
}(),
function() {
    function b(e) {
        window.setTimeout(e, 1000 / 60)
    }

    function d(e) {
        this.element = e, this.Adapter = g.Adapter, this.adapter = new this.Adapter(e), this.key = "waypoint-context-" + a, this.didScroll = !1, this.didResize = !1, this.oldScroll = {
            x: this.adapter.scrollLeft(),
            y: this.adapter.scrollTop()
        }, this.waypoints = {
            vertical: {},
            horizontal: {}
        }, e.waypointContextKey = this.key, f[e.waypointContextKey] = this, a += 1, g.windowContext || (g.windowContext = !0, g.windowContext = new d(window)), this.createThrottledScrollHandler(), this.createThrottledResizeHandler()
    }
    var a = 0,
        f = {},
        g = window.Waypoint,
        c = window.onload;
    d.prototype.add = function(h) {
        var i = h.options.horizontal ? "horizontal" : "vertical";
        this.waypoints[i][h.key] = h, this.refresh()
    }, d.prototype.checkEmpty = function() {
        var j = this.Adapter.isEmptyObject(this.waypoints.horizontal),
            k = this.Adapter.isEmptyObject(this.waypoints.vertical),
            h = this.element == this.element.window;
        j && k && !h && (this.adapter.off(".waypoints"), delete f[this.key])
    }, d.prototype.createThrottledResizeHandler = function() {
        function h() {
            i.handleResize(), i.didResize = !1
        }
        var i = this;
        this.adapter.on("resize.waypoints", function() {
            i.didResize || (i.didResize = !0, g.requestAnimationFrame(h))
        })
    }, d.prototype.createThrottledScrollHandler = function() {
        function h() {
            i.handleScroll(), i.didScroll = !1
        }
        var i = this;
        this.adapter.on("scroll.waypoints", function() {
            (!i.didScroll || g.isTouch) && (i.didScroll = !0, g.requestAnimationFrame(h))
        })
    }, d.prototype.handleResize = function() {
        g.Context.refreshAll()
    }, d.prototype.handleScroll = function() {
        var C = {},
            y = {
                horizontal: {
                    newScroll: this.adapter.scrollLeft(),
                    oldScroll: this.oldScroll.x,
                    forward: "right",
                    backward: "left"
                },
                vertical: {
                    newScroll: this.adapter.scrollTop(),
                    oldScroll: this.oldScroll.y,
                    forward: "down",
                    backward: "up"
                }
            };
        for (var w in y) {
            var m = y[w],
                q = m.newScroll > m.oldScroll,
                j = q ? m.forward : m.backward;
            for (var D in this.waypoints[w]) {
                var A = this.waypoints[w][D];
                if (null !== A.triggerPoint) {
                    var v = m.oldScroll < A.triggerPoint,
                        x = m.newScroll >= A.triggerPoint,
                        k = v && x,
                        B = !v && !x;
                    (k || B) && (A.queueTrigger(j), C[A.group.id] = A.group)
                }
            }
        }
        for (var z in C) {
            C[z].flushTriggers()
        }
        this.oldScroll = {
            x: y.horizontal.newScroll,
            y: y.vertical.newScroll
        }
    }, d.prototype.innerHeight = function() {
        return this.element == this.element.window ? g.viewportHeight() : this.adapter.innerHeight()
    }, d.prototype.remove = function(e) {
        delete this.waypoints[e.axis][e.key], this.checkEmpty()
    }, d.prototype.innerWidth = function() {
        return this.element == this.element.window ? g.viewportWidth() : this.adapter.innerWidth()
    }, d.prototype.destroy = function() {
        var j = [];
        for (var k in this.waypoints) {
            for (var h in this.waypoints[k]) {
                j.push(this.waypoints[k][h])
            }
        }
        for (var l = 0, m = j.length; m > l; l++) {
            j[l].destroy()
        }
    }, d.prototype.refresh = function() {
        var H, A = this.element == this.element.window,
            q = A ? void 0 : this.adapter.offset(),
            m = {};
        this.handleScroll(), H = {
            horizontal: {
                contextOffset: A ? 0 : q.left,
                contextScroll: A ? 0 : this.oldScroll.x,
                contextDimension: this.innerWidth(),
                oldScroll: this.oldScroll.x,
                forward: "right",
                backward: "left",
                offsetProp: "left"
            },
            vertical: {
                contextOffset: A ? 0 : q.top,
                contextScroll: A ? 0 : this.oldScroll.y,
                contextDimension: this.innerHeight(),
                oldScroll: this.oldScroll.y,
                forward: "down",
                backward: "up",
                offsetProp: "top"
            }
        };
        for (var j in H) {
            var I = H[j];
            for (var E in this.waypoints[j]) {
                var n, v, k, G, C, B = this.waypoints[j][E],
                    z = B.options.offset,
                    F = B.triggerPoint,
                    D = 0,
                    x = null == F;
                B.element !== B.element.window && (D = B.adapter.offset()[I.offsetProp]), "function" == typeof z ? z = z.apply(B) : "string" == typeof z && (z = parseFloat(z), B.options.offset.indexOf("%") > -1 && (z = Math.ceil(I.contextDimension * z / 100))), n = I.contextScroll - I.contextOffset, B.triggerPoint = Math.floor(D + n - z), v = F < I.oldScroll, k = B.triggerPoint >= I.oldScroll, G = v && k, C = !v && !k, !x && G ? (B.queueTrigger(I.backward), m[B.group.id] = B.group) : !x && C ? (B.queueTrigger(I.forward), m[B.group.id] = B.group) : x && I.oldScroll >= B.triggerPoint && (B.queueTrigger(I.forward), m[B.group.id] = B.group)
            }
        }
        return g.requestAnimationFrame(function() {
            for (var e in m) {
                m[e].flushTriggers()
            }
        }), this
    }, d.findOrCreateByElement = function(e) {
        return d.findByElement(e) || new d(e)
    }, d.refreshAll = function() {
        for (var e in f) {
            f[e].refresh()
        }
    }, d.findByElement = function(e) {
        return f[e.waypointContextKey]
    }, window.onload = function() {
        c && c(), d.refreshAll()
    }, g.requestAnimationFrame = function(j) {
        var h = window.requestAnimationFrame || window.mozRequestAnimationFrame || window.webkitRequestAnimationFrame || b;
        h.call(window, j)
    }, g.Context = d
}(),
function() {
    function b(g, h) {
        return g.triggerPoint - h.triggerPoint
    }

    function c(g, h) {
        return h.triggerPoint - g.triggerPoint
    }

    function a(e) {
        this.name = e.name, this.axis = e.axis, this.id = this.name + "-" + this.axis, this.waypoints = [], this.clearTriggerQueues(), d[this.axis][this.name] = this
    }
    var d = {
            vertical: {},
            horizontal: {}
        },
        f = window.Waypoint;
    a.prototype.add = function(e) {
        this.waypoints.push(e)
    }, a.prototype.clearTriggerQueues = function() {
        this.triggerQueues = {
            up: [],
            down: [],
            left: [],
            right: []
        }
    }, a.prototype.flushTriggers = function() {
        for (var g in this.triggerQueues) {
            var k = this.triggerQueues[g],
                l = "up" === g || "left" === g;
            k.sort(l ? c : b);
            for (var j = 0, h = k.length; h > j; j += 1) {
                var e = k[j];
                (e.options.continuous || j === k.length - 1) && e.trigger([g])
            }
        }
        this.clearTriggerQueues()
    }, a.prototype.next = function(h) {
        this.waypoints.sort(b);
        var g = f.Adapter.inArray(h, this.waypoints),
            j = g === this.waypoints.length - 1;
        return j ? null : this.waypoints[g + 1]
    }, a.prototype.previous = function(h) {
        this.waypoints.sort(b);
        var g = f.Adapter.inArray(h, this.waypoints);
        return g ? this.waypoints[g - 1] : null
    }, a.prototype.queueTrigger = function(g, h) {
        this.triggerQueues[h].push(g)
    }, a.prototype.remove = function(g) {
        var h = f.Adapter.inArray(g, this.waypoints);
        h > -1 && this.waypoints.splice(h, 1)
    }, a.prototype.first = function() {
        return this.waypoints[0]
    }, a.prototype.last = function() {
        return this.waypoints[this.waypoints.length - 1]
    }, a.findOrCreate = function(e) {
        return d[e.axis][e.name] || new a(e)
    }, f.Group = a
}(),
function() {
    function b(d) {
        this.$element = c(d)
    }
    var c = window.jQuery,
        a = window.Waypoint;
    c.each(["innerHeight", "innerWidth", "off", "offset", "on", "outerHeight", "outerWidth", "scrollLeft", "scrollTop"], function(f, d) {
        b.prototype[d] = function() {
            var e = Array.prototype.slice.call(arguments);
            return this.$element[d].apply(this.$element, e)
        }
    }), c.each(["extend", "inArray", "isEmptyObject"], function(d, e) {
        b[e] = c[e]
    }), a.adapters.push({
        name: "jquery",
        Adapter: b
    }), a.Adapter = b
}(),
function() {
    function a(c) {
        return function() {
            var d = [],
                e = arguments[0];
            return c.isFunction(arguments[0]) && (e = c.extend({}, arguments[1]), e.handler = arguments[0]), this.each(function() {
                var f = c.extend({}, e, {
                    element: this
                });
                "string" == typeof f.context && (f.context = c(this).closest(f.context)[0]), d.push(new b(f))
            }), d
        }
    }
    var b = window.Waypoint;
    window.jQuery && (window.jQuery.fn.waypoint = a(window.jQuery)), window.Zepto && (window.Zepto.fn.waypoint = a(window.Zepto))
}();