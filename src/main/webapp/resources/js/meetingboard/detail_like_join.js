const likeBtn = document.querySelector("#likeBtn");
const unlikeBtn = document.querySelector("#unlikeBtn");
const joinBtn = document.querySelector("#joinBtn");
const mbNum = document.querySelector("#mbNum");
const mNum = document.querySelector("#mNum");

function likeBtnFunction(){
    likeBtn.addEventListener("click", function(){
        //이제 Ajax로 POST하여 교차테이블에 넣으면 된다.
    
        let addLikeCheck = confirm("찜목록에 추가합니까?");
    
        if(!addLikeCheck){
            return;
        }
    
        const xhttp = new XMLHttpRequest();
    
        xhttp.open("POST", "/mbl/like");
    
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    
        xhttp.send("memberNum=" + mNum.value + "&meetingBoardNum=" + mbNum.value);
    
        xhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                let result = this.responseText.trim();
                
                if(result > 0){
                    alert("찜목록 추가 성공");
                } else{
                    alert("찜목록 추가 실패");
                }
    
                location.reload();
            }
        }
    
    });
}

function unlikeBtnFunction(){
    unlikeBtn.addEventListener("click", function(){
        let deleteLikeCheck = confirm("찜목록에서 삭제합니까?");

        if(!deleteLikeCheck){
            return;
        }

        const xhttp = new XMLHttpRequest();

        xhttp.open("POST", "/mbl/unlike");

        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

        xhttp.send("memberNum=" + mNum.value + "&meetingBoardNum=" + mbNum.value);

        xhttp.onreadystatechange = function(){
            if(this.readyState == 4 && this.status == 200){
                let result = this.responseText.trim();

                if(result > 0){
                    alert("찜목록 삭제 성공");
                } else{
                    alert("찜목록 삭제 실패");
                }
    
                location.reload();
            }
        }

    });
}

joinBtn.addEventListener("click", function(){
    console.log("join");
});