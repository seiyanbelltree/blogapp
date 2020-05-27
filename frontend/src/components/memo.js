import React from "react";
import ReactDOM from "react-dom";
function App() {
    let items = [
        {"name":"いちご", "price":"100"},
        {"name":"りんご", "price":"150"},
        {"name":"もも", "price":"200"}
    ]
  return (
    <div className="App">
      <table className="table table-striped">
        <tbody>
           {items.map((value)=>(
           <tr>
           <th scope="row">{value.name}</th>
           <td>{value.price}円</td>
           </tr>
           ))}
        </tbody>
      </table>
    </div>
  );
}

export default App;
ReactDOM.render(<App />, document.getElementById("app"));

//株価取得関数？
  async function callApi(){
    const res = await fetch("https://api.matumo.com/kabu/kabu_ave_realtime_api_v1.php?type=1");
    this.state.stock = await res.json();
    console.log(res);
    console.log(index)
  }
  callApi();

  //クラスコンポーネント内の関数を子にpropsとして渡すとき
  //変数名　=　(() => this.関数名()/>
  //呼び出すときも　onClick={() => props.変数名()} のように関数型の値として呼び出す




