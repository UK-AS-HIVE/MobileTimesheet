Router.route '/',
  onBeforeAction: ->
    if Meteor.isCordova or /iPad|iPhone|Android/.test(navigator.userAgent)
      @redirect '/mobile'
    else
      @redirect '/payroll'

Router.route 'mobile',
  path: '/mobile'

Router.route 'payroll',
  path: '/payroll'

