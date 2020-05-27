import React from "react";
import ReactDOM from "react-dom";
function App3() {
  return(
    <div className="text-center">
    <TestClass />
    </div>
  )
}

class TestClass extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      isPublished: true,
      order: 0,
      nabeatsu: "まじめ"
    }
  }
//状態反転させる関数
  togglePublished = () => {
    this.setState({
      isPublished: !this.state.isPublished
    })
  };
  plusN = () => {
    this.setState((state,prop) => {
      if ((state.order + 1) % 3 === 0 || ((state.order + 1)+"").includes("3")){
        return {order: state.order + 1, nabeatsu: "アホ"};
      } else {
        return {order: state.order + 1, nabeatsu: "普通"};
      }
    })
  };

  render(){
    return(
      <>
        <p onClick={this.plusN} >{this.state.order}</p>
        <p>ナベアツ：{this.state.nabeatsu}</p>
        <label htmlFor="check">公開状態</label>
        <input type="checkbox" checked={this.state.isPublished} id="check" onClick={this.togglePublished} />
        <p>stateテスト</p>
      </>
    )
  }
}

export default App3;
ReactDOM.render(<App3 />, document.getElementById("app3"));