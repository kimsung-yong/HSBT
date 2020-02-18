console.log("Reply Module....");

var qnaReplyService = (function () {

    function add(qr_content, callback, error) {
        console.log("add reply...........");

        $.ajax({
            type : 'post',
            url : '/qna/replies/new',
            data : JSON.stringify(qr_content),
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
        })
    }

    function getList(param, callback, error) {
        var q_no = param.q_no;
        var page = param.page || 1;

        $.getJSON("/qna/replies/pages/" + q_no + "/" + page + ".json",
            function (data) {
                if(callback) {
                    callback(data.replyCnt, data.list);
                }
            }).fail(function (xhr, status, err) {
            if(error) {
                error();
            }
        });
    }

    function remove(qr_no, callback, error) {
        $.ajax({
            type : 'delete',
            url : '/qna/replies/' + qr_no,
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

    function update(qr_content, callback, error) {
        console.log("QR_NO : " + qr_content.qr_no);

        $.ajax({
            type : 'put',
            url : '/qna/replies/' + qr_content.qr_no,
            data : JSON.stringify(qr_content),
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

    function get(qr_no, callback, error) {
        $.get("/qna/replies/" + qr_no + ".json", function (result) {
            if(callback) {
                callback(result);
            }
        }).fail(function (xhr, status, err) {
            if(error) {
                error(err);
            }
        });
    }

    function displayTime(timeValue) {
        var today = new Date();
        var gap = today.getTime() - timeValue;
        var dateObj = new Date(timeValue);
        var str = "";

        if(gap < (1000 * 60 * 60 * 24)) {
            var hh = dateObj.getHours();
            var mi = dateObj.getMinutes();
            var ss = dateObj.getSeconds();

            return [(hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi, ':', (ss > 9 ? '' : '0') + ss].join('');
        } else {
            var yy = dateObj.getFullYear();
            var mm = dateObj.getMonth();
            var dd = dateObj.getDay();

            return [yy, '/', (mm > 9 ? '' : '0') + mm, '/', (dd > 9 ? '' : '0') + dd].join('');
        }
    }

    return {
        add:add,
        getList:getList,
        remove:remove,
        update:update,
        get:get,
        displayTime:displayTime
    };
})();
