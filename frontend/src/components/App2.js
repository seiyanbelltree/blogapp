import React from "react";
import ReactDOM from "react-dom";
import Stock from "./Stock"
import Likebutton from "./Likebutton"
function App2() {
  return(
    <div className="text-center">
    <StockIndex />
    </div>
  )
}

class StockIndex extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      count:0
    }
  }

  componentDidMount(){
    document.getElementById("counter").addEventListener("click", this.countUp)
  }

  componentDidUpdate(){
    if (this.state.count > 10){
      this.setState({
        count:0
      })
    }
  }

  componentWillUnmount(){
    document.getElementById("counter").removeEventListener("click", this.countUp)
  }

  countUp = () => {
    this.setState({
      count:this.state.count + 1
    })
  }


  render(){
    const index = "10000"
    return(
      <>
       <Stock title={"react"} index={index} canPublish={false} />
       <Stock title={"django"} index={index} canPublish={true} />
       <Likebutton count={this.state.count} />
      </>
    )
  }
}


export default App2;
ReactDOM.render(<App2 />, document.getElementById("app2"));