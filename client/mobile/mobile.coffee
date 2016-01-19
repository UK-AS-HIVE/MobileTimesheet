Template.mobile.helpers
  disconnected: ->
    not Meteor.status().connected
  currentlySignedIn: ->
    TimeRecords.find {clockedOut: {$exists: false}}

Template.mobile.events
  'click .clockout.btn': (e, tpl) ->
    console.log @_id
    TimeRecords.update @_id,
      $set:
        clockedOut: new Date()

