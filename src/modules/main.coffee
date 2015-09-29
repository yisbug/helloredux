

{Component,PropTypes} = React = require 'react'

{Provider,connect} = require 'react-redux'

{bindActionCreators} = require 'redux'

$ = React.createElement
store = require './store'
actions = require './actions'
App = require './app'


# 选择state的某部分数据，使用connect连接到App组件
mapState = (state)->
    state
# Any component wrapped with connect() call will receive a dispatch function as a prop, and any state it needs from the global state.
app = connect(mapState)(App)

rootComponent = $ Provider,store:store,->
    $ app,actions:bindActionCreators(actions,store.dispatch)

React.render rootComponent,document.body

setInterval ->
    store.dispatch actions.timer(+new Date)
,1000
