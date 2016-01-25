Router.route '/',
  onBeforeAction: ->
    if Meteor.isCordova
      @redirect '/mobile'
    else
      @redirect '/payroll'

Router.route 'mobile',
  path: '/mobile'

Router.route 'payroll',
  path: '/payroll'

