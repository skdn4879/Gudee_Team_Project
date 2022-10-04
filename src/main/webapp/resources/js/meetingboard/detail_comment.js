const commentAddBtn = document.querySelector("#commentAddBtn");
const commentContents = document.querySelector("#commentContents");
const commentSection = document.querySelector("#commentSection");
const commentMoreBtn = document.querySelector("#commentMoreBtn");
let page = 1;

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

            commentContents.innerText = "";
            terminateComments();
            page = 1;
            getCommentList(page);

        }
    }

});

function getCommentList(page){
    let writer = commentAddBtn.getAttribute("data-m-num");
    let boardNum = commentAddBtn.getAttribute("data-mb-num");
    
    const xhttp = new XMLHttpRequest();

    xhttp.open("GET", "/mbc/list?meetingBoardNum=" + boardNum + "&page=" + page);

    xhttp.send();

    xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            let result = this.responseText.trim();
            result = JSON.parse(result);

            //console.log(result);

            let comments = result.commentList;
            
            for(let i = 0; i < comments.length; i++){

                const commentListTemplate = document.querySelector("#commentListTemplate");
                let template = commentListTemplate.innerHTML;
                template = template.replace("{nickname}", comments[i].memberDTO.nickname)
                .replace("{commentContents}", comments[i].contents)
                .replace("{commentDate}", comments[i].regDate);

                if(comments[i].memberFileDTO != null){
                    template = template.replace("{imagePath}", `../resources/upload/member/${comments[i].memberFileDTO.fileName}`);
                } else {
                    template = template.replace("{imagePath}", "/resources/images/meetingboard/detail_person_icon.svg");
                }

                let dummychild = document.createElement("div");
                dummychild.setAttribute("class", "dummychild");
                dummychild.innerHTML = template;

                if(comments[i].writer == writer){
                    let deleteBtn = document.createElement("button");
                    deleteBtn.setAttribute("class", "btn btn-danger commentDeleteBtn");
                    deleteBtn.setAttribute("data-mbc-num", comments[i].num);
                    deleteBtn.setAttribute("ischecked", 0);
                    deleteBtn.appendChild(document.createTextNode("댓글 삭제"));
                    dummychild.appendChild(deleteBtn);
                }

                commentSection.append(dummychild);

                if(page >= result.meetingBoardCommentPager.totalPage){
                    commentMoreBtn.setAttribute("disabled", true);
                } else {
                    commentMoreBtn.removeAttribute("disabled");
                }
            }
            
            //console.log(commentSection.children); //콜백함수가 중첩해서 걸리는게 문제인듯
            commentDelete();

        }
    }

}

getCommentList(page);

function commentDelete(){
    let deleteBtnList = document.querySelectorAll(".commentDeleteBtn");

    deleteBtnList.forEach(function(e){

        if(e.getAttribute("ischecked") == 0){
            e.setAttribute("ischecked", 1);

            e.addEventListener("click", function(){
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

                        terminateComments();
                        page = 1;
                        getCommentList(page);
                    }
                }
            });

        }
    });
}

commentMoreBtn.addEventListener("click", function(){
    page++;
    getCommentList(page);
});

function terminateComments() {

    let existedComments = commentSection.children;

    for(let i = 1; i < existedComments.length;){
        existedComments[i].remove();
    }

}