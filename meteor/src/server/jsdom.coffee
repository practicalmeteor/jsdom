jsdom = Npm.require('jsdom')

_.extend(jsdom, {
  envSync: Meteor.wrapAsync(jsdom.env, jsdom)

  scripts:
    jQuery: Assets.getText('meteor/src/private/js/jquery-1.11.2.min.js')
})
