import React from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom';
import OtherPage from './OtherPage';
import Fib from './Fib';

function App() {
  return (
      <Router>
        <div className="App">
          <header className="App-header">
              <h2>Fib Calculation version k8s !! </h2>
            <img src={logo} className="App-logo" alt="logo" />
            <Link to="/">Home</Link>
            <Link to="/otherpage">Other Page</Link>
          </header>
          <div className="App-body">
            <div>
              <Route exact path="/" component={Fib}/>
              <Route exact path="/otherpage" component={OtherPage}/>
            </div>
          </div>
        </div>
      </Router>
  );
}

export default App;
