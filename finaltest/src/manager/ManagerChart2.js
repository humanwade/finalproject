import React, { useEffect, useState } from 'react'; 
import { Bar,Pie } from 'react-chartjs-2'; 
import axios from "axios"; 
import '../App.css'; 

// 차트 관리 컴포넌트
function ChartPage2() {
  const [chartData, setChartData] = useState(null); // 차트 데이터
  const [loading, setLoading] = useState(true); // 데이터 로딩 상태
  const [error, setError] = useState(null); // 오류 상태
  const [age,setAge] = useState(null); // 연령별 데이터를 저장하는 상태
  const [female,setFemale] = useState(0); // 여성 회원 수
  const [male,setMale] = useState(0); // 남성 회원 수
  const [category,setCategory] = useState(""); // 선택된 목표 카테고리

  const fetchData = (goal) => {
    setLoading(true);
    setError(null); 
    setCategory(goal);
    // 성별 데이터를 가져오기
    axios.get(`/genderdata?goal=${goal}`) 
      .then(response => {
        console.log(response)
        const data = response.data;
        console.log(response.data)  
        console.log("123",data[0]);
        let man = 0;
        let woman = 0;
        let usercount = [0,0,0,0,0,0]; // 연령별 회원 수 초기화

        // 데이터를 순회하며 성별 및 연령별 회원 수를 계산
        data.forEach((d, idx) => {
            if(d.gender === '남자') man += d.gender_count;
            else woman += d.gender_count;
            switch(d.age_group){
            case "10대" : usercount[0] += d.gender_count; break;
            case "20대" : usercount[1] += d.gender_count; break;
            case "30대" : usercount[2] += d.gender_count; break;
            case "40대" : usercount[3] += d.gender_count; break;
            case "50대" : usercount[4] += d.gender_count; break;
            default : usercount[5] += d.gender_count; break;
            }
        });

        const labels = ['남성','여성']
        const counts = [man, woman];
        setMale(man);
        setFemale(woman);
        // 성별 차트데이터 설정
        setChartData({
          labels: labels,
          datasets: [
            {
              label: '성별 회원 수',
              data: counts,
              backgroundColor: [
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 99, 132, 0.2)',
              ],
              borderColor: [
                'rgba(54, 162, 235, 1)',
                'rgba(255, 99, 132, 1)',
              ],
              borderWidth: 1,
            },
          ],
        });
        const ageCounts = usercount //data.age.map(item=>item.count);
        const ageLabels = ['10대', '20대', '30대', '40대', '50대', '60대 이상']  //data.age.map(item => item.age_group);
        // 연령별 차트 데이터 설정
        setAge({
          labels:ageLabels,
          datasets:[
            {
              label:'연령별 회원수',
              data: ageCounts,
              backgroundColor: 'rgba(75, 192, 192, 0.2)',
              borderColor: 'rgba(75, 192, 192, 1)',
              borderWidth: 1,
            },
          ],
        });

        setLoading(false); 
      })
      .catch(error => {
        console.error("There was an error fetching the gender data!", error);
        setError("성별 데이터를 가져오는 도중 오류가 발생했습니다.");
        setLoading(false);
      });

  }; //[]); // 컴포넌트가 마운트될 때 한 번만 실행

  useEffect(() => {
    fetchData('전체'); // 초기 데이터 로드
  }, []);

  return (
    <div className="main">
      <div className="button-container">
        <button className="goalbutton" onClick={() => fetchData('체중감량')}>체중감량</button>
        <button className="goalbutton" onClick={() => fetchData('체중유지')}>체중유지</button>
        <button className="goalbutton" onClick={() => fetchData('근육증량')}>근육증량</button>
      </div>
      <div className="content">
      <div className="gender-chart-container">
      <div>{category}</div> 
      {loading ? (
          <p>Loading chart data...</p>
        ) : error ? (
          <p>{error}</p>
        ) : (
          <>
            <Pie data={chartData} /> {/* 성별 차트 */}
          </>
        )}
      </div>
      <div className="age-chart-container">

      {loading ? (
          <p>Loading chart data...</p>
        ) : error ? (
          <p>{error}</p>
        ) : (
          <>
            <Bar data={age}/> {/* 연령별 차트 */}
          </>
        )}
      </div>
    </div>
    </div>
  );
}
export default ChartPage2;