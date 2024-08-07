import React from 'react';
import { BrowserRouter as Router, Route, Link,  Routes } from 'react-router-dom';
import './App.css';
import ChartPage from './manager/ManagerChart';
import ChartPage2 from './manager/ManagerChart2';
import WorkOutManagement from './manager/exercise';
import Dietfood from './manager/healthyfood';
import NewsManagement from './manager/news';
import MemberManagement from './manager/MemberList';



function App() {
  return (
    <Router>
    <div className="App">
      <div className="sidebar">
        <div><Link to="/member-management">회원관리</Link></div>
        <div><Link to="/news-management">뉴스관리</Link></div>
        <div><Link to="/exercise-management">운동관리</Link></div>
        <div><Link to="/diet-management">식단관리</Link></div>
        <div><Link to="/chart">CHART</Link></div>
        <div><Link to="/chart2">CHART2</Link></div>
      </div>
      <div className="main">
        <Routes>
          <Route path="/member-management" element={<MemberManagement />} />
          <Route path="/news-management" element={<NewsManagement />} />
          <Route path="/exercise-management" element={<WorkOutManagement />} />
          <Route path="/diet-management" element={<Dietfood />} />
          <Route path="/chart" element={<ChartPage />} />
          <Route path="/chart2" element={<ChartPage2 />} />
        </Routes>
      </div>
    </div>
  </Router>
  // <Sidebar/>
  );
}

export default App;