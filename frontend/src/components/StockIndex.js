/*
import React,{useState, useEffect} from "react";
import axios from "axios";

function StockIndex(){
    const [data,]
    const getData = async() => {
        try{
            const result = await axios.get("https://api.matumo.com/kabu/kabu_ave_realtime_api_v1.php?type=1");
        } catch (error) {
            console.log("error!");
        }
    };


    */
/*const [isStock, reload] = useState("Loading");

    useEffect(async () => {
        const fetchData = async() => {
            const result = await axios(
                "https://api.matumo.com/kabu/kabu_ave_realtime_api_v1.php?type=1",
            );

            reload(result.isStock);
        };
        fetchData();
    },[]);*//*

    return(
        <>
            <button onClick={() => getData()}>get Data!</button>
        </>
    );
}

export default StockIndex;*/
