{Component,PropTypes} = React = require 'react'
$ = React.createElement

class App extends Component
    clickHandle:->
        this.props.actions.change()
    render:->
        {title,interval} = this.props
        $ 'div',null,
            $ 'span',null,title
            $ 'button',onClick:@clickHandle.bind(this),'click it.'
            $ 'span',null,interval

App.propTypes =
    title: PropTypes.string
    actions: PropTypes.object
    interval: PropTypes.string


module.exports = App