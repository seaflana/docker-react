import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <h1 className="App-title">Welcome to Sean's Webpage</h1>
        <p>
          Hey there Kyle!
        </p>
        <a
          href="https://www.google.com"  // Replace with the URL you want to link to
          target="_blank"               // Open link in a new tab or window
          rel="noopener noreferrer"     // Recommended for security when using target="_blank"
        >
          Google Link
        </a>
        </header>
    </div>
  );
}

export default App;
