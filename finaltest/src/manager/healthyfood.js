import React, { useState, useEffect } from 'react';
import axios from 'axios';
import '../App.css';

// 음식관리 컴포넌트 정의
function Dietfood() {
  
  const [food, setFood] = useState([]); // 음식 목록을 저장하는 상태

  // 식단 목록을 서버에서 가져오는 함수
  const getRecipeList = ()=>{
    axios.get('/diet-management')
    .then(result => {
      const tempwrecipe = result.data;
      setFood(tempwrecipe) // 식단 목록 설정
      setFilteredFood(tempwrecipe); // 필터링된 식단 목록을 설정
    })
  };

  // 신규 음식 상태 설정
  const [newFood, setNewFood] = useState({ recipeno: null, menuname: "", ingredient: "", imgurl: "", rcalorie: "" });
  // 검색어 상태 설정
  const [searchTerm, setSearchTerm] = useState('');
  // 필터링된 음식 목록 상태 설정
  const [filteredFood, setFilteredFood] = useState(food);
  // 등록버튼 상태 설정
  const [set, setSet] = useState('등록');
  // 선택된 음식 상태
  const [selectedFood, setSelectedFood] = useState(null);
  // 기본 이미지 설정
  const defaultImage = 'img/logo.png';

  // 페이지네이션 상태 설정
  const [currentPage, setCurrentPage] = useState(1); // 현재 페이지 번호를 저장
  const itemsPerPage = 10; // 페이지당 항목 수
  const [viewPage] = useState(5); // 페이지 버튼 개수

  // 선택된 음식 삭제 함수
  const deleteRecipe = () => {
    axios.delete('/recipedelete', {params:{recipeno:selectedFood.recipeno}})
    .then( result => {
        console.log(result);
        getRecipeList(); // 음식 목록 갱신
    })
  };

  // 음식 등록 함수
  const insertRecipe = () => {
    axios.post('/insertrecipe',newFood)
    .then(result => {
      console.log(result);
      getRecipeList();
    });
  }

  // 검색어가 변경될 때마다 음식 목록을 필터링
  const searchFilter = () => {
    setCurrentPage(1); // 페이지 번호를 첫 페이지로 초기화
    setFilteredFood(
      food.filter(food => {
        const name = food.menuname || '';
        return (
          name.toLowerCase().includes(searchTerm.toLowerCase()) 
        );
      })
    );
  }

  // 컴포넌트가 마운트될 때(컴포넌트가 처음으로 화면에 렌더링) 식단 목록을 가져옴
  useEffect( ()=> {
    getRecipeList();
  }, [] )

  // 검색어 또는 음식 목록이 변경될 때마다 필터 적용
  useEffect(() => {
    searchFilter();
  }, [food]);

  // 선택된 음식을 편집 상태로 설정
  const changeSet = (recipeno, menuname, ingredient, imgurl, cooking, rcalorie) => {
    setSet('수정'); // 버튼 상태를 '수정'으로 설정
    setSelectedFood({ recipeno, menuname, ingredient, imgurl, cooking, rcalorie }); // 선택된 음식 설정
    setNewFood({ recipeno, menuname, ingredient, imgurl, cooking, rcalorie }); // 신규 음식 정보 설정
  };

  // 입력 필드 변경 핸들러
  const handleChange = (e) => {
    const { name, value } = e.target;
    setNewFood(prevState => ({ ...prevState, [name]: value })); // 신규 음식 정보 업데이트
  };

  // 신규 콘텐츠 추가 핸들러
  const handleAdd = () => {
    const newRecipeno = food.length > 0 ? Math.max(...food.map(item => item.recipeno)) + 1 : 1;
    const newFoodWithId = { ...newFood, recipeno: newRecipeno, imgurl: newFood.imgurl || defaultImage };
    setFood(prevState => [...prevState, newFoodWithId]); // 새로운 음식 목록에 추가
    setNewFood({ recipeno: "", menuname: "", ingredient: "", imgurl: "", cooking: "",rcalorie:0 });
    insertRecipe();
  };

  // 기존 콘텐츠 수정 핸들러
  const handleUpdate = () => {
    const updateFood = {
      recipeno: newFood.recipeno,
      menuname: newFood.menuname,
      ingredient: newFood.ingredient,
      imgurl: newFood.imgurl,
      cooking: newFood.cooking,
      rcalorie: newFood.rcalorie,
    };
    axios.put('/updaterecipe', updateFood)
    .then(result => {
      console.log(result);
      setSet('등록');
      getRecipeList(); // 업데이트 후 리스트 갱신
      setNewFood({ recipeno: "", menuname: "", ingredient: "", imgurl: "", cooking: "",rcalorie:"" });
      setSet('등록');
    })  
  }

  //업로드 페이지 버튼 핸들러
  const uploadpagebutton = () => {
    setNewFood({ recipeno: "", menuname: "", ingredient: "", imgurl: "", cooking: "",rcalorie:"" });
    setSet('등록');
    setSelectedFood(null);
  }

  // 기존 콘텐츠 삭제 핸들러
  const handleDelete = () => {
    if (selectedFood) {
      setFood(prevState =>
        prevState.filter(food => food.recipeno !== selectedFood.recipeno)); // 음식 목록에서 삭제
      setSelectedFood(null); // 선택된 음식 초기화
      deleteRecipe(); // 음식 삭제 함수 호출
      setNewFood({ recipeno: "", menuname: "", ingredient: "", imgurl: "", cooking: "",rcalorie:"" });
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
  const currentItems = filteredFood.slice(indexOfFirstItem, indexOfLastItem);

  // 페이지 번호 생성
  const pageNumbers = [];
  for (let i = 1; i <= Math.ceil(filteredFood.length / itemsPerPage); i++) {
    pageNumbers.push(i);
  }

  // 페이지네이션 범위 계산
  const currentPageGroup = Math.ceil(currentPage/viewPage);
  const startPage = (currentPageGroup - 1) * viewPage + 1;
  const endPage = Math.min(startPage + viewPage - 1, pageNumbers.length);

  const renderPageNumbers = pageNumbers.slice(startPage - 1, endPage).map(number => (
    <button key={number} id={number} onClick={handleClick} className={currentPage === number ? 'active' : ''}>
      {number}
    </button>
  ));

  return (
    <div className="main">
      {/* 신규 음식 입력 섹션 */}
      <div className="content">
      <div className="content-input">
        <div className="content-preview">
          <img src={newFood.imgurl || defaultImage} style={{ width: '100%' }} alt='logo' />
        </div>
        <input
          name="imgurl"
          value={newFood.imgurl}
          onChange={handleChange}
          placeholder="url"
        />
        <input
          name="menuname"
          value={newFood.menuname}
          onChange={handleChange}
          placeholder="음식 이름"
        />
        <input
          name="rcalorie"
          value={newFood.rcalorie}
          onChange={handleChange}
          placeholder="음식 칼로리"
        />
        <textarea
          name="ingredient"
          value={newFood.ingredient}
          onChange={handleChange}
          placeholder="음식 레시피"
        />
        <textarea
          name="cooking"
          value={newFood.cooking}
          onChange={handleChange}
          placeholder="요리 방법"
        />
        {set === '수정' ?
          <div className="buttons-container">
            <button onClick={handleUpdate}>{set}</button>
            <button onClick={handleDelete}>삭제</button>
          </div> :
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
            placeholder="음식 이름 검색"
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            onKeyUp={(e) => {
              if (e.keyCode === 13) searchFilter()
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
              <th>CALORIE</th>
            </tr>
          </thead>
          <tbody>
            {/* 필터링된 콘텐츠 목록 표시 */}
            {currentItems.map(food => (
              <tr key={food.recipeno}>
                <td>{food.recipeno}</td>
                <td className='title'
                  onClick={() => changeSet(
                    food.recipeno, 
                    food.menuname, 
                    food.ingredient,food.imgurl, 
                    food.cooking,
                    food.rcalorie  
                    )}
                >
                  {food.menuname}
                </td>
                <td>{food.rcalorie}</td>
              </tr>
            ))}
          </tbody>
        </table>
        {/* 페이지 버튼 */}
        <div className="pagination">
          <button
            onClick={() => setCurrentPage(startPage - viewPage)}
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

export default Dietfood;