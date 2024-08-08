import React, { useState, useEffect } from 'react';
import axios from 'axios';
import '../App.css';

// 운동관리 컴포넌트 정의
function WorkOutManagement() {

  const [exercise, setExercise] = useState([]); // 운동 목록을 저장하는 상태

  // 뉴스 목록을 서버에서 가져오는 함수
  const getExerciseList = ()=>{
    axios.get('/exercise-management')
    .then(result => {
      const tempworkout = result.data;
      setExercise(tempworkout) // 운동 목록 설정
      setFilteredExercise(tempworkout); // 필터링된 뉴스 목록을 설정
    })
  };

  // 선택된 운동 삭제 함수
  const deleteExcercise = () =>{
    axios.delete('/exercisedelete', {params:{workid:selectedExercise.workid}})
    .then( result => {
        console.log(result);
      getExerciseList(); // 운동 목록 갱신
    })
  };

  // 컴포넌트가 마운트될 때(컴포넌트가 처음으로 화면에 렌더링) 운동 목록을 가져옴
  useEffect( ()=> {
    getExerciseList();
  }, [] )

  // 검색어 또는 운동 목록이 변경될 때마다 필터 적용
  useEffect(() => {
    searchFilter();
  }, [exercise]);

  // 새로운 운동 정보를 저장하는 상태
  const [newExercise, setNewExercise] = useState({workid:"" , workvideoid:"",workname: "", workcategory: "", description:"" });

  // 검색어 상태 설정
  const [searchTerm, setSearchTerm] = useState('');

  //필터링된 운동 목록을 저장하는 상태
  const [filteredExercise, setFilteredExercise] = useState(exercise);

  // 등록/수정 버튼 상태 
  const [set, setSet] = useState('등록');

  // 선택된 운동 정보를 저장하는 상태
  const [selectedExercise, setSelectedExercise] = useState(null);

  // 기본 이미지 설정
  const defaultImage = 'img/logo.png';

  // 페이지네이션 상태 설정
  const [currentPage, setCurrentPage] = useState(1); // 현재 페이지 번호를 저장
  const itemsPerPage = 10; // 페이지당 항목수
  const [viewPage] = useState(5); // 페이지 버튼개수

  //  검색어가 변경될 때마다 콘텐츠 목록을 필터링
  const searchFilter = () => {
    setCurrentPage(1); // 페이지 번호를 첫 페이지로 초기화
    setFilteredExercise(
      exercise.filter(exercise => {
        const title = exercise.workname || '';
        const category = exercise.workcategory || '';
        return (
          title.toLowerCase().includes(searchTerm.toLowerCase()) ||
          category.toLowerCase().includes(searchTerm.toLowerCase())
        );
      })
    );
  };

  // 운동 등록 함수
  const insertExercise = () => {
    const url = newExercise.workvideoid;
    newExercise.workvideoid = url.slice(url.indexOf("v=")+2);
    axios.post('/insertexercise',newExercise)
    .then(result => {
      console.log(result);
      getExerciseList(); // 운동 목록 갱신
    });
  }

  // 선택된 운동을 편집 상태로 설정
  const changeSet = (workid,workname, workvideoid ,workcategory,description) => {
    setSet('수정'); // 버튼 상태를 '수정'으로 설정
    setSelectedExercise({workid, workname,  workcategory, workvideoid, description }); // 선택된 운동 설정
    setNewExercise({ workid ,  workname, workcategory, workvideoid, description }); // 신규 운동 정보 설정
  }

  // 입력 필드 변경 핸들러
  const handleChange = (e) => {
    const { name, value } = e.target;
    setNewExercise(prevState => ({ ...prevState, [name]: value })); // 신규 운동 정보 업데이트
  };

  // 신규 운동 추가 핸들러
  const handleAdd = () => {
    const newWorkID = exercise.length > 0 ? Math.max(...exercise.map(item => item.workid)) + 1 : 1;
    const newExerciseWithId = { ...newExercise, workid: newWorkID, workvideoid: newExercise.workvideoid || defaultImage  };
    setExercise(prevState =>  [...prevState, newExerciseWithId ]); // 새로운 운동 목록에 추가
    setNewExercise({ workid:"" , workvideoid:"",workname: "", workcategory: "", description:"" });
    insertExercise();
  };

  // 기존 운동 수정 핸들러
  const handleUpdate = () => {
    const url = newExercise.workvideoid;
    newExercise.workvideoid = url.slice(url.lastIndexOf("vi/") + 3, url.lastIndexOf("/hqdefault.jpg"));
    const updateExercise = {
      workid : newExercise.workid,
      workvideoid : newExercise.workvideoid,
      workname : newExercise.workname,
      workcategory : newExercise.workcategory,
      description : newExercise.description
    };
    axios.put('/exerciseupdate', updateExercise)
    .then(result => {
      setSet('등록');
      getExerciseList();
      setNewExercise({workid:"" , workvideoid:"",workname: "", workcategory: "", description:"" });
      setSet('등록');
    })
  }

  //업로드 페이지 버튼 핸들러
  const uploadpagebutton = () => {
    setNewExercise({workid:"" , workvideoid:"",workname:"", workcategory:"" , description:"" });
    setSet('등록'); // 버튼 상태를 '등록'으로 설정 
    setSelectedExercise(null); // 선택된 운동 초기화
  }

  // 기존 운동 삭제 핸들러
  const handleDelete = () => {
    if(selectedExercise){
      setExercise(prevState => 
        prevState.filter(exercise => exercise.workid !== selectedExercise.workid));
      setSelectedExercise(null); //선택된 운동 초기화
      deleteExcercise(); // 운동 삭제 함수 호춝
      setNewExercise({workid:"" , workvideoid:"",workname: "", workcategory: "", description:"" });
      setSet('등록');
    }
  }

  // 페이지네이션 핸들러
  const handleClick = (event) => {
    setCurrentPage(Number(event.target.id)); // 현재 페이지 설정
  };

  // 현재 페이지에 맞는 항목 필터링
  const indexOfLastItem = currentPage * itemsPerPage;
  const indexOfFirstItem = indexOfLastItem - itemsPerPage;
  const currentItems = filteredExercise.slice(indexOfFirstItem, indexOfLastItem);

  // 페이지 번호 생성
  const pageNumbers = [];
  for (let i = 1; i <= Math.ceil(filteredExercise.length / itemsPerPage); i++) {
    pageNumbers.push(i);
  }

  // 페이지네이션 범위 계산
  const currentPageGroup = Math.ceil(currentPage/viewPage);
  const startPage = (currentPageGroup - 1) * viewPage + 1;
  const endPage = Math.min(startPage + viewPage - 1, pageNumbers.length);
  // 페이지 번호 버튼 랜더링
  const renderPageNumbers = pageNumbers.slice(startPage - 1, endPage).map(number => (
    <button key={number} id={number} onClick={handleClick} className={currentPage === number ? 'active' : ''}>
      {number}
    </button>
  ))

  return (
    <div className="main">
      {/*  신규 콘텐츠 입력 섹션 */}
      <div className="content">
      <div className="content-input">
        <div className="content-preview" >
          <img src={newExercise.workvideoid || defaultImage} style={{ width: '100%' }} alt='logo' />
        </div>
        <input 
          name="workvideoid"
          value={newExercise.workvideoid}
          onChange={handleChange}
          placeholder="URL"
        />
        <input
          name="workname"
          value={newExercise.workname}
          onChange={handleChange}
          placeholder="운동 영상 제목"
        />
         <input 
          name="workcategory"
          value={newExercise.workcategory}
          onChange={handleChange}
          placeholder="운동 카테고리"
        />
        <textarea 
          name="description"
          value={newExercise.description}
          onChange={handleChange}
          placeholder="운동 설명"
        />
      { set === '수정' ?  
          <div className="buttons-container">
            <button onClick={handleUpdate}>{set}</button>
            <button onClick={handleDelete}>삭제</button>
          </div>:  
        <div className="btn_regist buttons">
          <button className="uploadcontents" onClick={handleAdd}>업로드</button>
        </div> 
      }
      </div>
      {/* 콘텐츠 테이블 섹션 */}
      <div className="content-table">
        {/* 검색 입력 필드 */}
      <div className="content-search-bar">
          <input 
            type="text" 
            placeholder="제목 or 카테고리 검색" 
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            onKeyUp={(e) => {
              if(e.keyCode==13) searchFilter()
            }}
          />
          <button className="uploadpagebutton"
            onClick={uploadpagebutton}>업로드 페이지
          </button>
        </div>
        <table>
          <thead>
            <tr>
              <th>NO</th>
              <th>TITLE</th>
              <th>CATEGORY</th>
            </tr>
          </thead>
          <tbody>
            {/* 필터링된 콘텐츠 목록 표시 */}
            {currentItems.map(exercise => (
              <tr key={exercise.workid}>
              <td>{exercise.workid}</td>
              <td className='title'
                onClick={() => changeSet(
                  exercise.workid,
                  exercise.workname,
                  `https://i.ytimg.com/vi/${exercise.workvideoid}/hqdefault.jpg`,  // URL에 변수를 올바르게 포함
                  exercise.workcategory,
                  exercise.description
                )}
              >
                {exercise.workname}
              </td>
              <td>{exercise.workcategory}</td>
            </tr>
            ))}
          </tbody>
        </table>
        {/* 페이지 버튼 */}
        <div className="pagination">
            <button
              onClick={() => setCurrentPage( startPage - viewPage)}
              disabled={currentPage === 1}
            >
              &lt;
            </button>
            {renderPageNumbers}
            <button
              onClick={() => setCurrentPage(endPage + 1)}
              disabled={currentPage === pageNumbers.length}
            >
              &gt;
            </button>
        </div>
      </div>
    </div>
    </div>
  );
}

export default WorkOutManagement;