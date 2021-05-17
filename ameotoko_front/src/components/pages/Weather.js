import React, { Component } from "react";
import axios from "axios";
import { useHistory } from "react-router-dom";
import { errorHandle } from "../functions/errorHandle"

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
      errorHandle(error);
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
