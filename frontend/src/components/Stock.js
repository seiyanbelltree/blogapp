import React from "react";

const Stock = (props) => {
    let publishState = "";
    if  (props.canPublish){
        publishState = "公開済み"
    } else {
        publishState = "非公開"
    }
    return(
        <div>
            <p>{props.title}</p>
            <p>コンポーネント分割です</p>
            <p>株価：{props.index}</p>
            <p>{publishState}</p>
        </div>
    );
};

export default Stock;