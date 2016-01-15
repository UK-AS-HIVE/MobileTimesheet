@TimeRecords = new Ground.Collection 'timeRecords'
@TimeRecords.attachSchema new SimpleSchema
  employeeName:
    type: String
  projectName:
    type: String
  jobSite:
    type: String
  clockedIn:
    type: Date
    autoform:
      omit: true
    autoValue: -> new Date()
  clockedOut:
    type: Date
    optional: true
    autoform:
      omit: true

@Projects = new Ground.Collection 'projects'
@Projects.attachSchema new SimpleSchema
  projectName:
    type: String
  piName:
    type: String
    label: 'Primary Investigator'
  status:
    type: String
    allowedValues: ['Award', 'Closed']
  grant:
    type: String
    regEx: /Pending|[0-9]{10}/

