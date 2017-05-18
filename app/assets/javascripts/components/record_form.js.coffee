@RecordForm = React.createClass
	getInitialState: ->
		date: ''
		important_event: ''
		class_1: ''
		class_2: ''
		class_3: ''
		class_4: ''
		class_5: ''
		side_project: ''
		gym: ''
		other: ''

	valid: ->
		@state.date && @state.important_event

	handleChange: (e) ->
		name = e.target.name
		@setState "#{ name }": e.target.value

  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', { record: @state }, (data) =>
    @props.handleNewRecord data
    @setState @getInitialState()
    , 'JSON'


	render: ->
		React.DOM.form
			className: 'form-inline'
			onSubmit: @handleSubmit
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'text'
					className: 'form-control'
					placeholder: 'Date'
					name: 'date'
					value: @state.date
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'text'
					className: 'form-control'
					placeholder: 'Important Event'
					name: 'important_event'
					value: @state.important_event
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'number'
					className: 'form-control'
					placeholder: 'Class 1'
					name: 'class_1'
					value: @state.class_1
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'number'
					className: 'form-control'
					placeholder: 'Class 2'
					name: 'class_2'
					value: @state.class_2
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'number'
					className: 'form-control'
					placeholder: 'Class 3'
					name: 'class_3'
					value: @state.class_3
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'number'
					className: 'form-control'
					placeholder: 'Class 4'
					name: 'class_4'
					value: @state.class_4
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'number'
					className: 'form-control'
					placeholder: 'Class 5'
					name: 'class_5'
					value: @state.class_5
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'number'
					className: 'form-control'
					placeholder: 'Side Project'
					name: 'side_project'
					value: @state.side_project
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'number'
					className: 'form-control'
					placeholder: 'Gym'
					name: 'gym'
					value: @state.gym
					onChange: @handleChange
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'number'
					className: 'form-control'
					placeholder: 'Other'
					name: 'other'
					value: @state.other
					onChange: @handleChange
			React.DOM.button
				type: 'submit'
				className: 'btn btn-primary'
				disabled: !@valid()
				'Create record'