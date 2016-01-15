Router.route '/',
  onBeforeAction: ->
    if Meteor.isCordova
      @redirect '/mobile'
    else
      @redirect '/payroll'

Router.route 'mobile'

Router.route 'payroll'

