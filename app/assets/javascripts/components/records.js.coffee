@Records = React.createClass
	getInitialState: ->
		records: @props.data

	getDefaultProps: ->
		records: []

	addRecord: (record) ->
		records = @state.records.slice()
		records.push record
		@setState records: records

	render: ->
		React.DOM.div
			className: 'records'
			React.DOM.h2
				className: 'title'
				'Records'
			React.createElement RecordForm, handleNewRecord: @addRecord
			React.DOM.hr null
			React.DOM.table
				className: 'table table-bordered'
				React.DOM.thead null,
					React.DOM.tr null,
						React.DOM.th null, 'Date'
						React.DOM.th null, 'Important Event'
						React.DOM.th null, 'Class 1'
						React.DOM.th null, 'Class 2'
						React.DOM.th null, 'Class 3'
						React.DOM.th null, 'Class 4'
						React.DOM.th null, 'Class 5'
						React.DOM.th null, 'Side Projects'
						React.DOM.th null, 'Gym'
						React.DOM.th null, 'Other'
				React.DOM.tbody null,
					for record in @state.records
						React.createElement Record, key: record.id, record: record