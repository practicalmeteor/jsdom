Npm.depends({
    'jsdom': '3.1.0'
});


Package.describe({
    name: "practicalmeteor:jsdom",
    summary: "A JavaScript implementation of the DOM and HTML standards",
    version: "3.1.0_1",
    git: "https://github.com/practicalmeteor/meteor-jsdom.git"
});


Package.onUse(function (api) {
    api.versionsFrom('0.9.3');

    api.use(['underscore', 'meteor', 'coffeescript', 'practicalmeteor:loglevel', 'meteorhacks:async'], 'server');

    api.addFiles(['meteor/src/server/jsdom.coffee'], 'server');

    api.addFiles(['meteor/src/private/js/jquery-1.11.2.min.js'], 'server', {isAsset: true});

    api.export(['jsdom'], 'server');
});


Package.onTest(function(api) {
    api.use(['practicalmeteor:jsdom', 'practicalmeteor:loglevel', 'coffeescript', 'practicalmeteor:munit'], 'server');

    api.addFiles(['meteor/tests/server/jsdom-tests.coffee'], 'server');
});
