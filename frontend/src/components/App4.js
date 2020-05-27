import React from "react";
import ReactDOM from "react-dom";

function App4() {
  return(
    <div className="text-center">
    <LifeC />
    </div>
  )
}

class LifeC extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      isPublished: true,
      order: 0,
      nabeatsu: "まじめ"
    }
  }
  render(){
    return(
      <div>
        <p>ライフサイクルテスト</p>
      </div>
    )
  }
}

export default App4;
ReactDOM.render(<App4 />, document.getElementById("app4"));