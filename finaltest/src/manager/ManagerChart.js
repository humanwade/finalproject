import React, { useEffect, useState } from 'react'; 
import { Line } from 'react-chartjs-2'; 
import axios from "axios"; 
import 'chart.js/auto'; 
import '../App.css'; 

// 차트 관리 컴포넌트
function ChartPage() {
  
  const [chartData, setChartData] = useState(null); // 차트 데이터
  const [loading, setLoading] = useState(true); // 데이터 로딩 상태
  const [error, setError] = useState(null); // 오류 상태
  const [prevMonthUsers, setPrevMonthUsers] = useState(0); // 전월 회원가입 수
  const [currentMonthUsers, setCurrentMonthUsers] = useState(0); // 현재 월 회원가입 수
  const [increaseAmount, setIncreaseAmount] = useState(0); // 회원가입 수 증가량
  const [increasePercentage, setIncreasePercentage] = useState(0); // 회원가입 수 증가 비율
  const [years, setYears] = useState([]); // 연도 목록 상태
  const [selectedYear, setSelectedYear] = useState(new Date().getFullYear()); // 선택된 연도 상태
  const [months, setMonths] = useState([]); // 월 목록 상태
  const [selectedMonth, setSelectedMonth] = useState(new Date().getMonth() + 1); // 선택된 월 상태
  const [prevYear, setPrevYear] = useState(selectedMonth === 1 ? selectedYear - 1 : selectedYear); // 이전 월의 연도
  const [prevMonth, setPrevMonth] = useState(selectedMonth === 1 ? 12 : selectedMonth - 1); // 이전 월

  // 컴포넌트가 처음 랜더링될 때 연도 및 월 목록을 생성
  useEffect(() => {
    // 연도 목록 생성
    const currentYear = new Date().getFullYear();
    const yearRange = [];
    for (let year = currentYear - 5; year <= currentYear + 5; year++) {
      yearRange.push(year);
    }
    setYears(yearRange); // 연도 목록 상태 설정
    
    const monthRange = [];
    for (let month = 1; month <= 12; month++) {
      monthRange.push(month);
    }
    setMonths(monthRange); // 월 목록 상태 생성
  }, []);

  // 선택된 연도 및 월이 변경될 때마다 차트 데이터와 회원가입 수 데이터를 가져옴
  useEffect(() => {
    // 현재 달이 1월이면 전년도 12월과 비교
    setPrevYear(selectedMonth === 1 ? selectedYear - 1 : selectedYear);
    setPrevMonth(selectedMonth === 1 ? 12 : selectedMonth - 1);

    // 차트 데이터를 서버에서 가져옴
    axios.get(`/managerchart?year=${selectedYear}&month=${selectedMonth}`)
      .then(response => {
        const data = response.data;
        const labels = data.map(item => `${item.month}월`); // 차트 레이블 설정
        const counts = data.map(item => item.email_count); // 차트 데이터 설정

        setChartData({
          labels: labels,
          datasets: [
            {
              label: '월별 회원 가입수',
              data: counts,
              fill: false, 
              borderColor: 'rgb(75, 192, 192)', 
              tension: 0.1 
            }
          ]
        });
        setLoading(false); // 로딩 상태를 false로 설정
      })
      .catch(error => {
        console.error("There was an error fetching the chart data!", error);
        setError("차트 데이터를 가져오는 도중 오류가 발생했습니다."); 
        setLoading(false); 
      });

    // 회원가입 유저 수 데이터 가져오기
    axios.get(`/monthjoinuser?year=${selectedYear}&month=${selectedMonth}`)
      .then(response => {
        const data = response.data;
        setPrevMonthUsers(data.first_month_users); // 전월 회원가입 수
        setCurrentMonthUsers(data.second_month_users); // 현재 월 회원가입 수
        setIncreaseAmount(data.second_month_users - data.first_month_users); // 증가량 계산
        setIncreasePercentage(data.change_percentage); // 증가 비율 설정
      })
      .catch(error => {
        console.error("There was an error fetching the user data!", error);
        setError("회원가입 유저 수 데이터를 가져오는 도중 오류가 발생했습니다."); 
      });
  }, [selectedYear, selectedMonth]); // 선택된 연도와 월이 변경될 때마다 실행
  return (
    <div className="main"> 
      <div className="select-year">
         {/* 연도 및 월 선택 드롭다운 */}
          <select id="year" value={selectedYear} onChange={e => setSelectedYear(parseInt(e.target.value))}>
            {years.map(year => (
              <option key={year} value={year}>{year}</option>
            ))}
          </select>
          <select id="month" value={selectedMonth} onChange={e => setSelectedMonth(parseInt(e.target.value))}>
            {months.map(month => (
              <option key={month} value={month}>{month}월</option>
            ))}
          </select>
      </div>
      <div className="content">
      <div className="chart-container">
      <span>{selectedYear}년</span>
         {/* 차트 데이터 로딩 상태 */}
        {loading ? (
          <p>Loading chart data...</p> 
        ) : error ? (
          <p>{error}</p> 
        ) : (
          <Line data={chartData} /> 
        )}
      </div>
      <div className="user-stats"> 
        <h2>회원가입 추이</h2>
        <div className="increase-info"> 
          <span>전월대비 {increaseAmount >= 0 ? "증가" : "감소"}</span>
          <div>
            <span className={increaseAmount >= 0 ? "arrow-up" : "arrow-down"}>
              {increaseAmount >= 0 ? "⬆" : "⬇"}
            </span> 
            {Math.abs(increaseAmount)}명 {increaseAmount >= 0 ? "증가" : "감소"}<br />
            <span className={increaseAmount >= 0 ? "arrow-up" : "arrow-down"}>
              {increaseAmount >= 0 ? "⬆" : "⬇"}
            </span> 
            {Math.abs(increasePercentage)}% {increaseAmount >= 0 ? "증가" : "감소"}
          </div>
        </div>
        <div className="total-users">
          <span className={selectedMonth <= 1 ? "전년도" : "올해"}>
            {selectedMonth <=1 ? prevYear+"년" : selectedYear+"년"}
          </span><br/>
          <span>{prevMonth}월 회원가입 수: {prevMonthUsers}명</span><br />
          <span>{selectedYear}년</span><br/>
          <span>{selectedMonth}월 회원가입 수: {currentMonthUsers}명</span>
        </div>
      </div>
    </div>
    </div>
  );
}

export default ChartPage; 