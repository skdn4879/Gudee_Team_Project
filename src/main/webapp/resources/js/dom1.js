
//1.선택 후 작업
const d1 = document.getElementById("d1");
const d2 = document.getElementById("d2");
const d3 = document.getElementById("d3");
const year = document.getElementById("year");
const month = document.getElementById("month");
const date = document.getElementById("date");
const d4 = document.getElementById("d4");

//-----------------------------d1
alert(d1.value);
alert(d1.getAttribute("value"));
//---------------------------------d2
d2.type = "button";
// d2.setAttribute("type", "butten")
//----------------------------------------d3
let count = window.prompt("숫자를 입력하세요");

console.log(count);

let t="";

for(let i=0; i<count; i++){
    t=t+'<input type="text">';
}

d3.innerHTML=t;
//------------------------------year
let y="";

for(let i=2022; i>=1900; i--){
    y=y+'<option>'+i+'</option>';
}

year.innerHTML=y;
//-------------------------------month
let m="";

for(let i=1; i<=12; i++){
    m=m+'<option>'+i+'</option>';
}

month.innerHTML=m;
//--------------------------------date
let d="";

for(let i=1; i<31; i++){
    d=d+'<option>'+i+'</option>';
}

date.innerHTML=d;
//----------------------------------------------d4

let r=prompt("row의 갯수를 입력하세요");//--------tr
let c=prompt("colume의 갯수를 입력하세요");//-----td

let table="";
for(let i=0; i<r; i++){
    table=table+"<tr>";

        for(let j=0; j<c; j++){
            table=table+"<td>"+i+j;
            table=table+"</td>";
        }

    table=table+"</tr>";
}

d4.innerHTML=table;