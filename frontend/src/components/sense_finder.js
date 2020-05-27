import React from "react";
import ReactDOM from "react-dom";
import Content from "./Content";


function Sense_finder() {
  return(
    <div className="text-center">
    <AutoClock />
    <Content />
    </div>
  )
}

class AutoClock extends React.Component{
  constructor(props){
    super(props);
    this.now = new Date();

    this.state = {
      time: `${this.now.getHours()}:${this.now.getMinutes()}:${this.now.getSeconds()}`
    }

    this.refresh = this.refresh.bind(this);
  }

  refresh(){
    this.now = new Date();
    this.setState((state) => ({
      time: `${this.now.getHours()}:${this.now.getMinutes()}:${this.now.getSeconds()}`
    }));
  }

  componentDidMount(){
    this.interval = setInterval(this.refresh, 1000);
  }
  componentWillUnMount(){
  clearInterval(this.interval);
  }
  render(){
   return <p>{this.state.time}</p>
  }
}

export default Sense_finder;
ReactDOM.render(<Sense_finder />, document.getElementById("senseFinder"));