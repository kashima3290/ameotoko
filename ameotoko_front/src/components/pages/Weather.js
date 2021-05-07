import React, { Component } from "react";
import axios from 'axios'

class Weather extends Component {
  constructor(props) {
    super(props)
    this.state = {
      posts: []
    };
  }

  componentDidMount() {
    axios.get(process.env.REACT_APP_DEV_RAILS_API_URI + "/weathers")
    .then(res => {
      const now_weather = res.data;
      this.setState({ now_weather });
    })
    .catch((error) => {
      if (error.response) {
          // エラーが返却された場合
          console.log(error.response.data);
          console.log(error.response.status);
          console.log(error.response.headers);
        } else if (error.request) {
          // リクエストは行われましたが、レスポンスは受信しなかった場合
          // `error.request`は、ブラウザのXMLHttpRequestのインスタンスであり、Node.jsのhttp.ClientRequestのインスタンス
          console.log(error.request);
        } else {
          // 予期しないエラーが発生した場合
          console.log('Error', error.message);
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
