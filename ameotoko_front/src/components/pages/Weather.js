import React, { Component } from "react";
import axios from "axios";
import { errorHandle } from "../functions/errorHandle"

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
    // エラーハンドリング
    .catch((error) => {
      errorHandle(error);
      }
    )
  }

  shouldComponentUpdate() {
    if(this.state.update) {
      return true;
    }
    else {
      return false;
    }
  }

  render() {
    return (
      <h1>Weather</h1>
    );
  }
}

export default Weather;
