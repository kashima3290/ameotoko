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
    axios.get('http://localhost:3000/bots')
      .then(res => {
        const now_weather = res.data;
        this.setState({ now_weather });
      })
  }

  render() {
    return (
      <h1>Weather</h1>
    );
  }
}

export default Weather;
