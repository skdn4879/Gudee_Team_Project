const commentAddBtn = document.querySelector("#commentAddBtn");
const commentContents = document.querySelector("#commentContents");
const commentSection = document.querySelector("#commentSection");

commentAddBtn.addEventListener("click", function(){

    let writer = commentAddBtn.getAttribute("data-m-num");
    let boardNum = commentAddBtn.getAttribute("data-mb-num");
    let contents = commentContents.value;

    //console.log(writer, boardNum, contents, contents.length);

    if(contents.length < 1){
        alert("내용을 작성해주세요.");
        return;
    }

    const xhttp = new XMLHttpRequest();

    xhttp.open("POST", "/mbc/add");

    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhttp.send("writer=" + writer + "&meetingBoardNum=" + boardNum + "&contents=" + contents);

    xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            let result = this.responseText.trim();
            result = JSON.parse(result);

            if(result.result > 0){
                alert("댓글 작성 성공");
            } else{
                alert("댓글 작성 실패");
            }

            location.reload();

        }
    }

});

function getCommentList(){
    let writer = commentAddBtn.getAttribute("data-m-num");
    let boardNum = commentAddBtn.getAttribute("data-mb-num");
    
    const xhttp = new XMLHttpRequest();

    xhttp.open("GET", "/mbc/list?meetingBoardNum=" + boardNum);

    xhttp.send();

    xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            let result = this.responseText.trim();
            result = JSON.parse(result);

            console.log(result);

            let comments = result.commentList;
            
            for(let i = 0; i < comments.length; i++){

                const commentListTemplate = document.querySelector("#commentListTemplate");
                let template = commentListTemplate.innerHTML;
                template = template.replace("{nickname}", comments[i].memberDTO.nickname)
                .replace("{commentContents}", comments[i].contents)
                .replace("{commentDate}", comments[i].regDate);

                let dummychild = document.createElement("div");
                dummychild.setAttribute("class", "dummychild");
                dummychild.innerHTML = template;

                if(comments[i].writer == writer){
                    let deleteBtn = document.createElement("button");
                    deleteBtn.setAttribute("class", "btn btn-danger commentDeleteBtn");
                    deleteBtn.setAttribute("data-mbc-num", comments[i].num);
                    deleteBtn.appendChild(document.createTextNode("댓글 삭제"));
                    dummychild.appendChild(deleteBtn);
                }

                commentSection.append(dummychild);
            }

            commentDelete();
            
        }
    }

}

getCommentList();

function commentDelete(){
    const deleteBtnList = document.querySelectorAll(".commentDeleteBtn");

    deleteBtnList.forEach(function(e){
        e.addEventListener("click", function(){
            //console.log(e.getAttribute("data-mbc-num"));

            const xhttp = new XMLHttpRequest();

            xhttp.open("POST", "/mbc/delete");

            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

            xhttp.send("num=" + e.getAttribute("data-mbc-num"));

            xhttp.onreadystatechange = function(){
                if(this.readyState == 4 && this.status == 200){
                    let result = this.responseText.trim();

                    if(result > 0){
                        alert("댓글 삭제 성공");
                    } else{
                        alert("댓글 삭제 실패");
                    }

                    location.reload();
                }
            }
        });
    });
}