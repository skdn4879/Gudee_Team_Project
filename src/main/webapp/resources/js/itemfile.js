// itemfile.js

const fileAdd = document.getElementById("fileAdd")
const addFiles =document.getElementById("addFiles")

let count = 0;
let idx= 0;


fileAdd.addEventListener("click", function(){
    
    if(count>4){
            alert("최대5개만 가능")
                    return;
        }
       
		// 부모 el div 생성

        console.log("파일 추가");

        let div = document.createElement("div") // <div>
        let c = document.createAttribute("class") //class=""
        c.value="mb-3"
        div.setAttributeNode(c)
        c= document.createAttribute("id")
        c.value="file"+idx;//file 0
        div.setAttributeNode(c)


        //자식 el label 생성
       let label = document.createElement("label"); //<label></label>
       let labelText =document.createTextNode("file"); //"첨부파일"
       label.appendChild(labelText);////<label>첨부파일</label>
       /*let labelClass = document.createAttribute("class");// class=""
       labelClass.value="form-label"; // form-label
       label.setAttributeNode(labelClass); // class="form-label"
       let labelfor = document.createAttribute("for");// for=""
       labelfor.value="files"; //for="files"
       label.setAttributeNode(labelfor); // */
       label.setAttribute("class", "form-label");
       label.setAttribute("for", "files");

       div.appendChild(label);

       let input = document.createElement("input")
       input.setAttribute("type","file")
       input.setAttribute("name","files")
       input.setAttribute("class","form-control")
       input.setAttribute("id","files")

       div.appendChild(input);

        let button = document.createElement("button")
        let buttonText =document.createTextNode("삭제");
         button.appendChild(buttonText)
        
        button.setAttribute("type","button")
        button.setAttribute("class","del")
        button.setAttribute("title","idx")
        

        div.appendChild(button);

        addFiles.append(div);

        count++;
        idx++;


})


addFiles.addEventListener("click", function(event){
    let button = event.target

    if(event.target.className=='del'){
        document.getElementById("file"+button.title).remove();
        
            count--;
    }
    

})