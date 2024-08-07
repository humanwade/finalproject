import React, { useState, useEffect } from 'react';
import axios from "axios";
import '../App.css';

// 뉴스 관리 컴포넌트
function NewsManagement() {

    const [news, setNews] = useState([]); // 뉴스 목록을 저장하는 상태

    // 뉴스 목록을 서버에서 가져오는 함수
    const getNewsList = ()=>{
      axios.get('/news-management')
      .then(result => {
        const tempnews = result.data;
        setNews(tempnews) // 뉴스 목록 설정
        setFilteredNews(news); // 필터링된 뉴스 목록을 설정
      })
    };

    // 뉴스 삭제 함수
    const deleteNews = () =>{
      axios.delete('/newsdelete', {params:{"newsid":checkedNews.join(', ')}})
      .then( result => {
          console.log(result);
          setCheckedNews([]);
          getNewsList();
      })
    };

    // 컴포넌트가 마운트될 때 뉴스 목록을 가져옴
    useEffect( ()=> {
      getNewsList();
    }, [] )
    
    // 검색어 상태 설정
    const [searchTerm, setSearchTerm] = useState('');
    // 필터링된 뉴스 목록 상태 설정
    const [filteredNews, setFilteredNews] = useState(news);
    // 체크된 뉴스 목록 상태 설정
    const [checkedNews, setCheckedNews] = useState([]);

    // 페이지네이션 상태 설정
    const [currentPage, setCurrentPage] = useState(1); // 현재 페이지 번호를 저장하는 상태
    const itemsPerPage = 10; // 페이지당 항목 수
    const [viewPage] = useState(4); // 페이지 버튼갯수
    
    // 검색어가 변경될 때마다 뉴스 목록을 필터링
    const searchFilter = () => {
      setFilteredNews(
        news.filter(news => {
          const title = news.title || '';
          const content = news.content || '';
          return (
            title.toLowerCase().includes(searchTerm.toLowerCase()) ||
            content.toLowerCase().includes(searchTerm.toLowerCase())
          );
        })
      );
    };
    
    // 뉴스데이터 또는 검색어가 변경될 때마다 필터링 적용
    useEffect(() => {
      searchFilter();
    }, [news]);
  
    // 체크박스 변경 핸들러
    const handleCheck = (id) => {
      setCheckedNews(prevState => {
        if (prevState.includes(id)) {
          return prevState.filter(newsId => newsId !== id);
        } else {
          return [...prevState, id];
        }
      });
    }
  
    // 뉴스 삭제 핸들러
    const handleDelete = () => {
      alert(`선택된 뉴스 ID: ${checkedNews.join(', ')}`);
      deleteNews();
    }
  
    // 페이지 버튼 클릭 핸들러
    const handleClick = (event) => {
      setCurrentPage(Number(event.target.id));
    }

    // 현재 페이지에 맞는 항목 필터링
    const indexOfLastItem = currentPage * itemsPerPage;
    const indexOfFirstItem = indexOfLastItem - itemsPerPage;
    const currentItems = filteredNews.slice(indexOfFirstItem, indexOfLastItem);

    // 페이지 번호 생성
    const pageNumbers = [];
    for(let i = 1; i <= Math.ceil(filteredNews.length / itemsPerPage); i++){
      pageNumbers.push(i);
    }
    
    // 페이지네이션 범위 계산
    const currentPageGroup = Math.ceil(currentPage/viewPage);
    const startPage = (currentPageGroup - 1) * viewPage + 1;
    const endPage = Math.min(startPage + viewPage - 1, pageNumbers.length);
    // 페이지 번호 버튼 렌더링
    const renderPageNumbers = pageNumbers.slice(startPage - 1, endPage).map(number => (
      <button key={number} id={number} onClick={handleClick} className={currentPage === number ? 'active' : ''}>
        {number}
      </button>
    ));

    //[3] 화면 출력
    return (
      <div className="news-table">
        <div className="search-bar">
          {/* 검색 입력 필드 */}
        <input className='news-input'
          type="text" 
          placeholder="뉴스 제목 or 내용 검색" 
          value={searchTerm}
          onChange={(e) => setSearchTerm(e.target.value)}
          onKeyUp={(e) => {
            if(e.keyCode===13)
              searchFilter()
            }
          }
        />
      </div>
      {/*  뉴스 리스트 테이블 */}
      <table className='news-table'>
        <thead>
          <tr>
            <th>NO</th>
            <th>제목</th>
            <th>내용</th>
            <th>날짜</th>
            <th>삭제</th>
          </tr>
        </thead>
        <tbody>
          {/* 필터링된 뉴스 목록 표시 */}
          {currentItems.map(news => (
            <tr key={news.newsid}>
              <td>{news.newsid}</td>
              <td>{news.title}</td>
              <td>{news.content}</td>
              <td>{news.newsdate}</td>
              <td>
                  <input 
                    type="checkbox" 
                    checked={checkedNews.includes(news.newsid)} 
                    onChange={() => handleCheck(news.newsid)} 
                  />
                </td>
            </tr>
          ))}
        </tbody>
      </table>
      {/* 삭제 버튼 */}
      <button onClick={handleDelete}
        className="deletebutton"
      >삭제</button>
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
              onClick={()=> setCurrentPage(endPage + 1)}
              disabled={currentPage === pageNumbers.length}
            >
              &gt;
            </button>
          </div>
      </div>
    );
  }

export default NewsManagement;