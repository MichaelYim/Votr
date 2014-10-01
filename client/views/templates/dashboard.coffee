Template.dashboard.events "submit form": (e) ->
  e.preventDefault()

  if !Meteor.user()
    alert("please log in")
  else
    if Submissions.findOne({userId: Meteor.user()._id}) != undefined
      alert "you submitted one already"

    else

      $target = $(e.target)
      console.log $target
      insertInfo =
        "userId" : Meteor.user()._id
        "name": $target.find("[name=name]").val()
        "1": $target.find("[name=one]").val()
        "2": $target.find("[name=two]").val()
        "3": $target.find("[name=three]").val()
        "4": $target.find("[name=four]").val()
        "5": $target.find("[name=five]").val()
        "6": $target.find("[name=six]").val()

      Meteor.call 'submit', insertInfo, (error, result) ->
        alert "submitted!"