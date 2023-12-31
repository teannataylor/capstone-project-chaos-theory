import React, { useState, useCallback, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';

const UserContext = React.createContext();

function UserProvider({ children }) {
  const [user, setUser] = useState(null);
  const navigate = useNavigate();

  const getCurrentUser = useCallback(async () => {
    try {
      const response = await fetch('/me');

      if (response.ok) {
        const data = await response.json();
        setUser(data);
      } else {
        const errorObj = await response.json();
        console.error(errorObj.error);
      }
    } catch (error) {
      console.error(error);
    }
  }, []);

  const login = async (userInfo) => {
    try {
      const response = await fetch('/login', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(userInfo),
      });

      if (response.ok) {
        const data = await response.json();
        console.log(data);
        setUser(data);
        navigate('/homepage');
        return true;
      } else {
        const errorData = await response.json();
        console.error(errorData.message);
      }
    } catch (error) {
      console.error(error);
    }
  };

  const logout = async () => {
    try {
      await fetch('/logout', {
        method: 'POST',
      });
      setUser(null);
      navigate('/');
    } catch (error) {
      console.error(error);
    }
  };

  const signup = async (userInfo) => {
    try {
      const response = await fetch('/signup', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(userInfo),
      });

      if (response.ok) {
        const data = await response.json();
        setUser(data.user);
        navigate('/');
      } else {
        const errorData = await response.json();
        console.error(errorData.message);
      }
    } catch (error) {
      console.error(error);
    }
  };

  
  useEffect(() => {
    // Check if user data exists in local storage on component mount
    const storedUser = localStorage.getItem('user');
    if (storedUser) {
      setUser(JSON.parse(storedUser));
    } else {
      getCurrentUser();
    }
  }, [getCurrentUser]);

  useEffect(() => {
    // Update local storage when user state changes
    localStorage.setItem('user', JSON.stringify(user));
  }, [user]);

  return (
    <UserContext.Provider
      value={{ user, setUser, getCurrentUser, logout, signup, login }}
    >
      {children}
    </UserContext.Provider>
  );
}

export { UserContext, UserProvider };
