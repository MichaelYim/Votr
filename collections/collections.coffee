@Submissions = new Meteor.Collection 'submissions'

Meteor.methods submit: (insertInfo) ->
  Submissions.insert insertInfo
