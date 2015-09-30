{Component,PropTypes} = React = require 'react'
$ = React.createElement
{div,input,button} = React.DOM

class App extends Component
    clickHandle:->
        dom = this.refs.input.getDOMNode()
        console.log this.props,123,this.store
        this.props.actions.change(dom.value)
        dom.value = ''
    render:->
        {title,interval} = this.props
        div className:'timer',
            div null,'定时器：' + interval
            div null,title
            input ref:'input'
            button onClick:@clickHandle.bind(this),'click it.'

App.propTypes =
    title: PropTypes.string
    actions: PropTypes.object
    interval: PropTypes.number

module.exports = App