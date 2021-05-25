import React, { useState, useEffect } from "react";
import axios from "axios";
import { useHistory } from 'react-router-dom'

function Weather(props) {
  // const hisotry = useHistory()
  // Rails APIから天気予報を取得
  axios.get(process.env.REACT_APP_DEV_RAILS_API_URI + "/weathers")
  .then(response => {
    const now_weather = response.data;
    console.log(now_weather);
  })
  .catch((error) => { // エラーハンドリング
    if (error.response) {
      // エラーが返却された場合
      // 401 認証エラー
      if (error.response.status === 401){
        console.log("エラー出たよ");
        // window.location = "/Login";
      }
      // console.log(error.response.data); // エラー文（devise）
      // console.log(error.response.headers); // エラー詳細
      } else if (error.request) {
        // リクエストは行われましたが、レスポンスは受信しなかった場合
        // `error.request`は、ブラウザのXMLHttpRequestのインスタンスであり、Node.jsのhttp.ClientRequestのインスタンス
        console.log(error.request);
      } else {
        // 予期しないエラーが発生した場合
        console.log("Error", error.message);
      }
    }
  )
  // .finally(function () { // axiosの処理結果によらずいつも実行させたい処理を記述
  //   }
  // );

  return (
    <h1>Weather</h1>
  );
};

export default Weather;
