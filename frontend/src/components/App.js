import React from "react";
import ReactDOM from "react-dom";
function App() {
  return(
    <div className="text-center">
    <Clock />
    <AutoClock />
    </div>
  )
}

class Clock extends React.Component{
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
  render(){
   return <p onClick={this.refresh}>{this.state.time}</p>
  }
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

export default App;
ReactDOM.render(<App />, document.getElementById("app"));