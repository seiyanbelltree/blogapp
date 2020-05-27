import React, {useState} from "react";
import ReactDOM from "react-dom";
import Article from "./Article";
import Likebutton from "./Likebutton";
import ApiTest from "./ApiTest";
import FormTest from "./FormTest";

const TestApp = () => {
    return(
        <div className="text-center">
          <Article />
          <Likebutton />
          <ApiTest />
          <FormTest />
        </div>
    );
}

export default TestApp;
ReactDOM.render(<TestApp />, document.getElementById("testapp"));