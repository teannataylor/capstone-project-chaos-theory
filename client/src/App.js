import './App.css';
import React, { useEffect, useContext, useState } from 'react';
import { Routes, Route } from 'react-router-dom';
import { UserContext } from './context/user';


function App() {


  return (
    <div className='App'>
      <Routes>
      <Route path="/" element={<WelcomePage/>}/>


      </Routes>
    </div>
  );
}

export default App;
