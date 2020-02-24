var estService = (function () {
    function add(estimate, callback, error) {
        $.ajax({
            type : 'post',
            url : '/',
            data : JSON.stringify(estimate),
            contentType : "application/json; charset=utf-8",
            success : function (result, status, xhr) {
                if(callback) {
                    callback(result);
                }
            },
            error : function (xhr, status, er) {
                if(error) {
                    error(er);
                }
            }
        });
    }

    function get(e_no, callback, error) {
        $.get("/member/memberInfo/get/" + e_no + ".json", function (result) {
            if(callback) {
                callback(result);
            }
        }).fail(function (xhr, status, err) {
            if(error) {
                error();
            }
        });
    }

    function getList(param, callback, error) {
        var id = param.id;

        $.getJSON("/member/memberInfo/" + id + ".json", function (data) {
            if(callback) {
                callback(data);
            }
        }).fail(function (xhr, status, err) {
            if(error) {
                error();
            }
        });
    }

    function update(estimate, callback, error) {
        $.ajax({
            type : 'put',
            url : '/member/memberInfo/' + estimate.e_no,
            data : JSON.stringify(estimate),
            contentType : "application/json; charset=utf-8",
            success : function (result, status, xhr) {
                if(callback) {
                    callback(result);
                }
            },
            error : function (xhr, status, er) {
                if(error) {
                    error(er);
                }
            }
        });
    }

    function remove(e_no, callback, error) {
        $.ajax({
            type : 'delete',
            url : '/member/memberInfo/' + e_no,
            success : function (deleteResult, status, xhr) {
                if(callback) {
                    callback(deleteResult);
                }
            },
            error : function (xhr, status, er) {
                if(error) {
                    error(er);
                }
            }
        });
    }

    function displayTime(timeValue) {
        var today = new Date();
        var gap = today.getTime() - timeValue;
        var dateObj = new Date(timeValue);
        // var str = "";

        if(gap < (1000 * 60 * 60 * 24)) {
            var hh = dateObj.getHours();
            var mi = dateObj.getMinutes();
            var ss = dateObj.getSeconds();
            return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi, ':', (ss > 9 ? '' : '0') + ss ].join('');
        } else {
            var yy = dateObj.getFullYear();
            var mm = dateObj.getMonth();
            var dd= dateObj.getDate();
            return [ (yy > 9 ? '' : '0') + yy, '/', (mm > 9 ? '' : '0') + mm, '/', (dd > 9 ? '' : '0') + dd ].join('');
        }
    };

    return {
        add:add,
        get:get,
        getList:getList,
        update:update,
        remove:remove,
        displayTime:displayTime
    };
})();