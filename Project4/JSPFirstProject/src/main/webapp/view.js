// const memberList = new Map();
//
// let listJson = [
//     {
//         title: "OT 내용 정리",
//         week: "1주차",
//         count: "1차시",
//         subject: "실전프로젝트",
//         date: "2023-09-01",
//         content: "안녕하세요!"
//     }, {
//         title: "OT 내용 정리",
//         week: "1주차",
//         count: "1차시",
//         subject: "실전프로젝트",
//         date: "2023-09-01",
//         content: "안녕하세요!"
//     }, {
//         title: "2주차 1차시 수업 정리",
//         week: "2주차",
//         count: "1차시",
//         subject: "컴퓨터구조",
//         date: "2023-09-09",
//         content: "안녕하세요!"
//     }, {
//         title: "1차 퀴즈 준비",
//         week: "4주차",
//         count: "1차시",
//         subject: "이산 수학",
//         date: "2023-09-21",
//         content: "안녕하세요!"
//     }, {
//         title: "프로젝트1",
//         week: "4주차",
//         count: "2차시",
//         subject: "실전 프로젝트",
//         date: "2023-09-20",
//         content: "안녕하세요!"
//     }
//     // 나머지 데이터 항목들
// ];
//
// const container = document.querySelector('.log'); // 데이터를 표시할 요소
// // 현재 URL에서 파라미터 문자열을 가져옵니다.
// const queryString = window.location.search;
//
// // URLSearchParams 객체를 사용하여 파라미터 값을 읽습니다.
// const urlParams = new URLSearchParams(queryString);
//
// // "data" 파라미터 값을 가져옵니다.
// const dataValue = urlParams.get("data");
//
// for (let i = 0; i < 5; i++) {
//     memberList.set(i, listJson[i]);
// }
//
// document
//     .getElementById('data1')
//     .value = memberList
//     .get(Number(dataValue))
//     .subject;
//
// // const parts = memberList
// //     .get(Number(dataValue))
// //     .date
// //     .replace(/-/g, '/');
//
// // document
// //     .getElementById('data2')
// //     .value = Date(parts);
// document
//     .getElementById('data2')
//     .value = memberList
//     .get(Number(dataValue))
//     .date;
// document
//     .getElementById('data3')
//     .value = memberList
//     .get(Number(dataValue))
//     .week;
// document
//     .getElementById('data4')
//     .value = memberList
//     .get(Number(dataValue))
//     .count;
// document
//     .getElementById('data5')
//     .value = memberList
//     .get(Number(dataValue))
//     .title;
// document
//     .getElementById('data6')
//     .value = memberList
//     .get(Number(dataValue))
//     .content;

function deleteData() {
    if (confirm('게시물을 삭제할까요?')) {
        alert("삭제되었습니다.");
        window.location.href = "./myform.jsp"
    } else {
        alert("취소 되었습니다.");
    }
}

// 현재 URL 가져오기
const url = new URL(window.location.href);

// 'data' 파라미터 값을 가져오기
const dataParam = url.searchParams.get('data');

function editMoving() {
    let subject = encodeURIComponent("<%=subject%>");
    let date = encodeURIComponent("<%=date%>");
    let week = encodeURIComponent("<%=week%>");
    let count = encodeURIComponent("<%=count%>");
    let title = encodeURIComponent("<%=title%>");
    let content = encodeURIComponent("<%=content%>");

    // 데이터를 쿼리 문자열로 구성
    let queryString = "?subject=" + subject + "&date=" + date + "&week=" + week + "&count=" + count + "&title=" + title + "&content=" + content;

    // edit.jsp로 리디렉션
    window.location.href = "edit.jsp" + queryString;

    // window.location.href = './edit.jsp';
}