function init(){
    const email = document.querySelector('#email');
    const email_txt = document.querySelector('#email-txt');
    const domain_txt = document.querySelector('#domain-txt');

    let emailValue = email.value.split('@');
    email_txt.value = emailValue[0];
    domain_txt.value = emailValue[1];

}