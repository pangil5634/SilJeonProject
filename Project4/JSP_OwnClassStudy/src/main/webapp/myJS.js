function Checkform() {

    if (form1.subject.value == "") {
        form1
            .subject
            .focus();
        alert("성명을 입력해 주십시오.");
        return false;
    } else if (form1.date.value == "") {
        form1
            .date
            .focus();
        alert("날짜를 입력해 주십시오.");
        return false;
    } else if (form1.week.value == "") {
        form1
            .week
            .focus();
        alert("주차를 입력해 주십시오.");
        return false;
    } else if (form1.count.value == "") {
        form1
            .count
            .focus();
        alert("차시를 입력해 주십시오.");
        return false;
    } else if (form1.title.value == "") {
        form1
            .title
            .focus();
        alert("제목을 입력해 주십시오.");
        return false;
    } else if (form1.content.value == "") {
        form1
            .content
            .focus();
        alert("내용을 입력해 주십시오.");
        return false;
    } else {
        alert("게시물이 추가됩니다.");

    }

}