const meetingBoardListItemPersonalCost = document.querySelectorAll(".meetingBoardListItemPersonalCost");

meetingBoardListItemPersonalCost.forEach(function(element, index){
    let personalCost = Number(element.innerText);
    personalCost -= (personalCost % 10);

    element.innerText = personalCost;
});

const meetingBoardListItemDueDate = document.querySelectorAll(".meetingBoardListItemDueDate");

meetingBoardListItemDueDate.forEach(function(element){
    let dueDate = element.innerText.split('T');
    element.innerText = dueDate[0] + " " + dueDate[1];
});

const meetingBoardListItem = document.querySelectorAll(".meetingBoardListItem");

meetingBoardListItem.forEach(function(element){
    element.addEventListener("click", function(){
        let meetingBoardNum = element.getAttribute("data-meetingboard-num");
        location.href = "./detail?num=" + meetingBoardNum;
    });
})