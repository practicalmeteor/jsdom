jsdom = Npm.require('jsdom')

_.extend(jsdom, {
  envSync: Meteor.wrapAsync(jsdom.env, jsdom)

#  envSync: (args...) ->
#
#    Async.runSync (done)->
#      cb = (errors, window)->
#        done(errors, window)
#      args.push(cb)
#      jsdom.env.apply jsdom, args
})
