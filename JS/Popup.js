(function (global, undefined) {
    var telerikBtn = global.telerikBtn = {};


    telerikBtn.PopupAddPolicy = function (sender, eventArgs) {
        var l = (screen.width - 400) / 2;
        var t = (screen.height - 350) / 2;

        window.open("./AddPolicy.aspx", "NewWin", "left=" + l + ", top=" + t + ",width=400,height=350,scrollbars=no,status=no");
    }


})(window);