import React, { Component } from "react";
import axios from "axios";
import { useHistory } from "react-router-dom";
import Error from "../functions/error"

class Weather extends Component {
  constructor(props) {
    super(props)
    this.state = {
      posts: []
    };
  }

  componentWillMount() {
    axios.get(process.env.REACT_APP_DEV_RAILS_API_URI + "/weathers")
    .then(res => {
      const now_weather = res.data;
      this.setState({ now_weather });
    })
    // エラーハンドリング
    .catch((error) => {
      if (error.response) {
          // エラーが返却された場合
          // 401 認証エラー
          if (error.response.status == 401){
            let error = new Error;
            error.getRequest();
            console.log("401 error");
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
  }

  render() {
    return (
      <h1>Weather</h1>
    );
  }
}

export default Weather;
