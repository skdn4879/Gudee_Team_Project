const requestReportModalSendBtn = document.querySelector('#requestReportModalSendBtn');
const requestReportModalCloseBtn = document.querySelector("#requestReportModalCloseBtn");
const formReport = document.querySelector("#formReport");

requestReportModalSendBtn.addEventListener("click", function(){
    const reportContent = document.querySelector("#reportContent");
    let sendingContent = reportContent.value;
    let hostNum = reportContent.getAttribute("data-hostnum");
    let guestNum = reportContent.getAttribute("data-guestnum");

    console.log(hostNum);
    console.log(guestNum);

    const xhttp = new XMLHttpRequest();

    xhttp.open("POST", "/member/report");

    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhttp.send("reportMemberNum=" + hostNum + "&reportedMemberNum=" + guestNum + "&reportContent=" + sendingContent);

    xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            let result = this.responseText.trim();
            result = JSON.parse(result);
            console.log(result.result);

            if(result.result > 0){
                alert("신고 완료");
            } else {
                alert("최대 신고 횟수 3회를 초과하였습니다");
            }
            
            requestReportModalCloseBtn.click();

            formReport.submit();

            location.reload();
        }
    }
        
    });
