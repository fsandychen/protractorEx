var beforeHooks = function() {
    this.Before(function(scenario, callback) {
        browser.clearMockModules();
        browser.manage().deleteAllCookies();
        callback();
    });
};
module.exports = beforeHooks;