let FairCommonPlugin = function () {
    return {
        showToast: function (resp) {
                   fairCommonPluginRequest(resp, 'showMessageToast');
              },
    }
}
