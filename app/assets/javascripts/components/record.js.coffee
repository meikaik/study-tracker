@Record = React.createClass
  render: ->
    React.DOM.tr null,
      React.DOM.td null, @props.record.date
      React.DOM.td null, @props.record.important_event
      React.DOM.td null, @props.record.class_1
      React.DOM.td null, @props.record.class_2
      React.DOM.td null, @props.record.class_3
      React.DOM.td null, @props.record.class_4
      React.DOM.td null, @props.record.class_5
      React.DOM.td null, @props.record.side_project
      React.DOM.td null, @props.record.gym
      React.DOM.td null, @props.record.other