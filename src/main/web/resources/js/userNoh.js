var userService = (function () {
    function update(user, callback, error) {
        $.ajax({
            type : 'put',
            url : '/member/memberInfo/mod' + user.id,
            data : JSON.stringify(user),
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

    function remove(id, callback, error) {
        $.ajax({
            type : 'delete',
            url : '/member/memberInfo/del' + id,
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

    return {
        update:update,
        remove:remove
    };
})();