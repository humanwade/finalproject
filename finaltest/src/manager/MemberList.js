import React, { useState, useEffect } from 'react';
import axios from "axios";

// 회원 관리 컴포넌트
function MemberManagement() {

    const [user, setUser] = useState([]); // 사용자 목록을 저장하는 상태
    
    // 백엔드 서버에서 사용자 목록을 가져오는 함수
    const getUsersList = () => {
      axios.get('/member-management')
      .then(result => {
        const tempusers = result.data;
        setUser(tempusers) //사용자 목록 설정
        setFilteredMembers(tempusers); //필터링된 사용자 목록 설정
      })
    };
    
    // 컴포넌트가 마운트될 때 사용자 목록을 가져옴
    useEffect(()=>{
      getUsersList();
    },[])
  
    // 유저 삭제 함수(선택된 사용자를 삭제하는 함수)
    const deleteUsers = () => {
      axios.delete('/usersdelete',{params:{"email":checkedMembers.join(',')}})
      .then( result => {
        console.log(result);
        getUsersList(); //사용자 목록 갱신
        setCheckedMembers([]); // 체크된 사용자 목록 초기화
      })
    }
  
    // 검색어 상태 설정 : 검색어를 저장하는 상태
    const [searchTerm, setSearchTerm] = useState('');
    // 필터링된 회원 목록 상태 설정 : 필터링된 사용자 목록을 저장하는 상태
    const [filteredMembers, setFilteredMembers] = useState(user);
    // 체크된 회원 목록 상태 설정 :  체크된 사용자 목록을 저장하는 상태
    const [checkedMembers, setCheckedMembers] = useState([]);
  
    // 페이지네이션 상태 설정
    const [currentPage, setCurrentPage] = useState(1); //현재 페이지 번호를 저장하는 상태
    const itemsPerPage = 10; //페이지당 항목수
    const [viewPage] = useState(5); // 페이지 버튼 갯수 
  
    // 검색어가 변경될 때마다 회원 목록을 필터링하는 함수
    const searchFilter = () => {
      setCurrentPage(1); // 페이지 번호를 첫 페이지로 초기화
      setFilteredMembers(
        user.filter(user => {
          const name = user.username || '';
          const email = user.email || '';
          return (
            name.toLowerCase().includes(searchTerm.toLowerCase()) ||
            email.toLowerCase().includes(searchTerm.toLowerCase())
          );
        })
      );
    };
    
    // user 또는 searchTerm이 변경될 때마다 검색 필터를 적용
    useEffect(() => {
      searchFilter();
    }, [user]);
  
    // 체크박스 변경 핸들러
    const handleCheck = (email) => {
      setCheckedMembers(prevState => {
        if (prevState.includes(email)) {
          return prevState.filter(userId => userId !== email);
        } else {
          return [...prevState, email];
        }
      });
    }
  
    // 회원 탈퇴 핸들러
    const handleDelete = () => {
      alert(`선택된 회원 email: ${checkedMembers.join(', ')}`);;
      deleteUsers();
    }
  
    // 페이지 버튼 클릭 핸들러
    const handleClick = (event) => {
      setCurrentPage(Number(event.target.id));
    }
  
    // 현재 페이지에 맞는 항목 필터링
    const indexOfLastItem = currentPage * itemsPerPage;
    const indexOfFirstItem = indexOfLastItem - itemsPerPage;
    const currentItems = filteredMembers.slice(indexOfFirstItem, indexOfLastItem); 
  
    // 페이지 번호 생성
    const pageNumbers = [];
    for(let i = 1; i <= Math.ceil(filteredMembers.length / itemsPerPage); i++){
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
      <div className="member-table">
        <div className="search-bar">
          {/* 검색 입력 필드 */}
        <input className='member-input'
          type="text" 
          placeholder="회원 이름 or 이메일 검색" 
          value={searchTerm}
          onChange={(e) => setSearchTerm(e.target.value)}
          onKeyUp={(e) => {
            if(e.keyCode==13) // Enter 키를 누르면 검색 필터 적용
              searchFilter()
            }
          }
        />
      </div>
      {/* 회원 목록 테이블 */}
      <table className='member-table'>
        <thead>
          <tr>
            <th>이름</th>
            <th>이메일</th>
            <th>성별</th>
            <th>나이</th>
            <th>목표</th>
            <th>가입날짜</th>
            <th>달성여부</th>
            <th>탈퇴</th>
          </tr>
        </thead>
        <tbody>
          {/* 필터링된 회원 목록 표시 */}
          {currentItems.map(user => (
            <tr key={user.email}>
              <td>{user.username}</td>
              <td>{user.email}</td>
              <td>{user.gender}</td>
              <td>{user.age}</td>
              <td>{user.goal}</td>
              <td>{user.joindate}</td>
              <td>{user.goalsuccess}</td>
              <td>
                  <input 
                    type="checkbox" 
                    checked={checkedMembers.includes(user.email)} 
                    onChange={() => handleCheck(user.email)} 
                  />
                </td>
            </tr>
          ))}
        </tbody>
      </table>
      {/* 탈퇴 버튼 */}
      <button onClick={handleDelete}
        className="deletebutton"
      >탈퇴</button>
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
export default MemberManagement;