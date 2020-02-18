console.log("Reply Module.....");

var BoardReplyService = (function () {

    function add(br_content,callback,error) {
       console.log("add reply");

        $.ajax({
            type : 'post',
            url : '/board/freeboardreplies/new',
            data : JSON.stringify(br_content),
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
        var b_no = param.b_no;
        var page = param.page || 1;

        $.getJSON("/board/freeboardreplies/pages/" + b_no + "/" + page + ".json",
            function (data) {
                if(callback) {
                    // callback(data);
                    callback(data.replyCnt,data.list)
                }

            }).fail(function (xhr, status, err) {
            if(error) {
                error();
            }
        });
    }

    function remove(br_no, callback, error) {
        $.ajax({
            type : 'delete',
            url : '/board/freeboardreplies/' + br_no,
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

    function update(br_content, callback, error) {
        console.log("br_bo : " + br_content.br_no);

        $.ajax({
            type : 'put',
            url : '/board/freeboardreplies/' + br_content.br_no,
            data : JSON.stringify(br_content),
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

    function get(br_no, callback, error) {
        $.get("/board/freeboardreplies/" + br_no + ".json", function (result) {
            if(callback) {
                callback(result);
            }
        }).fail(function (xhr, status, err) {
            if(error) {
                error();
            }
        });
    }

    function displayTime(timeValue) {
        var today  = new Date();

        var gap = today.getTime() - timeValue;

        var dateObj = new Date(timeValue);
        var str = "";

        if(gap < (1000 * 60 * 60 * 24)) {
            var hh = dateObj.getHours();
            var mi = dateObj.getMinutes();
            var ss = dateObj.getSeconds();

            return [ (hh > 9 ? '' : '0') + hh, ':', (mi > 9 ? '' : '0') + mi, ':', (ss > 9 ? '' : '0') + ss ].join('');
        } else {
            var yy = dateObj.getFullYear();
            var mm = dateObj.getMonth() + 1;
            var dd = dateObj.getDate();

            return [ yy, '/', (mm > 9 ? '' : '0') + mm, '/', (dd > 9 ? '' : '0') + dd ].join('');
        }
    }
    ;

    return {
        add:add,
        getList:getList,
        remove:remove,
        update:update,
        get:get,
        displayTime:displayTime
    };
})();