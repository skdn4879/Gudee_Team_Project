let id = document.querySelector('#id');
let pw = document.querySelector('#password');
let pw2 = document.querySelector('#password2');
let photo = document.querySelector('#photo');
let birthday = document.querySelector('#birthday');
let email = document.querySelector('#email');
let btn = document.querySelector('#btn');
let form = document.querySelector('#form');
let idm = document.querySelector('#idm');
let pwm = document.querySelector('#pwm');
let pwm2 = document.querySelector('#pwm2');
let birthdaym = document.querySelector('.birthdaym');
let photom = document.querySelector('.photom');
let cb = document.querySelectorAll('.cb');
let ch = document.querySelectorAll('.ch');
let br = document.createElement('br');
const email_txt = document.querySelector('#email-txt');
const domainList = document.querySelector('#domain-list');
const domainInput = document.querySelector('#domain-txt');
const birth_year = document.querySelector('#birth-year');
const birth_month = document.querySelector('#birth-month');
const birth_day = document.querySelector('#birth-day');


function joinCheck(){
    //아이디 조건 메세지
    id.addEventListener('blur',function(){
        if(id.value.length < 2){
            idm.innerHTML = '두 글자 이상 입력해주세요';
            id.appendChild(br);
        }else{
            idm.innerHTML = '';
        }
    })

    //비밀번호 조건 메세지
    pw.addEventListener('blur',function(){
        if(pw.value.length < 4){
            pwm.innerHTML = '4글자 이상 입력해주세요';
        }else{
            pwm.innerHTML = '';
        }
    })

    //비밀번호 확인 메세지
    pw2.addEventListener('blur',function(){
        if(pw2.value != pw.value){
            pwm2.innerHTML = '비밀번호가 일치하지 않습니다';
        }else{
            pwm2.innerHTML = '비밀번호가 일치합니다';
        }
    })

    //이름, 닉네임, 이메일, 전화번호 조건 메세지
    cb.forEach(function(c, i){
        c.addEventListener('blur',function(){
            if(c.value.length < 2){
                ch[i].innerHTML = '두 글자 이상 입력해주세요';
            }else{
                 ch[i].innerHTML = '';
            }
        })
    });

    // for(i = 0; i < cb.length; i++){
    //     console.log("cb[i]: ",cb[i].value);
    //     cb[i].addEventListener('blur',function(c){
    //         if(c.value.length < 3){
    //             ch[i].innerHTML = '두 글자 이상 입력해주세요';
    //         }else{
    //             ch[i].innerHTML = '';
    //         }
    //     })
    // }

    //생년월일 조건 메세지
    birthday.addEventListener('blur',function(){
        console.log(birthday.value);
        if(birthday.value == ''){
            birthdaym.innerHTML = '날짜를 선택해주세요';
        }else{
            birthdaym.innerHTML = '';
        }
    })

    //생년월일 option
    //년도
    // let y = '';
    for(let i = 2022; i >= 1900; i--){
        let y = document.createElement('option');
        let y_value = document.createAttribute('value');
        y_value.value = i;
        // y = y + '<option>' + i + '</option>';
        y.setAttributeNode(y_value);
        let y_content = document.createTextNode(i);
        y.appendChild(y_content);
        birth_year.append(y);
    }

    //프로필 사진 추가 조건 메세지
    photo.addEventListener('blur',function(){
       console.log(photo.value);
       if(photo.value == ''){
            photom.innerHTML = '사진을 등록해주세요';
       }else{
            photom.innerHTML = '';
       }
    })

    //이메일 select
    domainList.addEventListener('change',function(event){
        console.log(event);
        //option에 있는 domain 선택 시
        if(event.target.value != 'type'){
            //선택한 domain을 input에 입력하고 disabled
            domainInput.value = event.target.value;
            domainInput.setAttribute('readonly',true);
        }else{//직접 입력 시
            // input 내용 초기화 & 입력 가능하도록 변경
            console.log('else');
            domainInput.value = '';
            //readonly 속성 제거
            domainInput.removeAttribute("readonly");
            // domainInput.readonly = false;
        }

    })
    
    // 회원가입 버튼 클릭시 각각의 조건이 충족여부 확인
    btn.addEventListener('click',function(){
        let check = true;
        for(i = 0;i < cb.length; i++){
            if(cb[i].value.length < 3){
                check = false;
                break;
            }
        }
        
        //이메일 문자 합치기
        email.value = email_txt.value + '@' + domainInput.value

        if(id.value.length > 2 && pw.value.length > 4 && check){
            form.submit();
        }else{
            alert('입력조건을 확인해주세요');
        }
    });
}
