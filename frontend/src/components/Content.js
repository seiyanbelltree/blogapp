import React, { useState, useEffect } from 'react';
import Question from "./Question";
import AddData from "./AddData";

function Content() {
  const [data, setData] = useState(null);
  const [data2, setData2] = useState(null);
  const [start, setStart] = useState("start");
  const [addData, setAddData] = useState("add")
  const [buttonStatus, setButtonStatus] = useState({display:"inline"})

  const QuestionClick = () => {
      setData(<Question />)
      setButtonStatus({display:"none"})
  }
  useEffect(() => {
    document.getElementById("questionClick").addEventListener("click", QuestionClick)
    return() => {
      document.getElementById("questionClick").removeEventListener("click", QuestionClick)
    }
  },[]);

  const AddClick = () => {
    setData(<AddData />)
    setButtonStatus({display:"none"})
  }

  useEffect(() => {
    document.getElementById("addClick").addEventListener("click", AddClick)
    return() => {
      document.getElementById("addClick").removeEventListener("click", AddClick)
    }
  },[]);


  return (
    <div>
        <button id="questionClick" style={buttonStatus} >{start}</button>
        {data}
        <button id="addClick" style={buttonStatus} >{addData}</button>
    </div>
  );
};

export default Content;