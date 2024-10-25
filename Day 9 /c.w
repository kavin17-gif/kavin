App.js:
import React from 'react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import NavBar from './components/NavBar';
import Home from './components/Home';
import Singers from './components/Singers';
import Albums from './components/Albums';

const App = () => {
  return (
    <Router>
      <NavBar />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/singers" element={<Singers />} />
        <Route path="/albums" element={<Albums />} />
      </Routes>
    </Router>
  );
};

export default App;


components/NavBar.js
import React from 'react';
import { Link } from 'react-router-dom';

const NavBar = () => {
  return (
    <nav>
      <h2>Music World</h2>
      <ul>
        <li>
          <Link to="/">Home</Link>
        </li>
        <li>
          <Link to="/singers">Singers</Link>
        </li>
        <li>
          <Link to="/albums">Albums</Link>
        </li>
      </ul>
    </nav>
  );
};

export default NavBar;

components/Home.js:
import React from 'react';

const Home = () => {
  return (
    <div>
      <h1>Welcome to Music World</h1>
    </div>
  );
};

export default Home;


components/Singers.js:
import React from 'react';

const Singers = () => {
  const singersList = [
    { name: 'Singer 1', year: 2020 },
    { name: 'Singer 2', year: 2021 }
  ];

  return (
    <div>
      <h1>Singers</h1>
      <ul>
        {singersList.map((singer, index) => (
          <li key={index}>{singer.name} - {singer.year}</li>
        ))}
      </ul>
    </div>
  );
};

export default Singers;


components/Albums.js:
import React from 'react';

const Albums = () => {
  const albumsList = [
    { name: 'Album 1', singer: 'Singer 1' },
    { name: 'Album 2', singer: 'Singer 2' }
  ];

  return (
    <div>
      <h1>Albums</h1>
      <ul>
        {albumsList.map((album, index) => (
          <li key={index}>{album.name} by {album.singer}</li>
        ))}
      </ul>
    </div>
  );
};

export default Albums;



