$(function () {

    var _partent = window.parent;

    $(document).on("click", function () {
        _partent.hideDropdown();
    });

});