
// Đối tượng   `Validator`
function Validator(options){

    function getParent(element, selector){
        while (element.parentElement){
            if(element.parentElement.matches(selector)){
                return element.parentElement
            }
            element = element.parentElement
        }
    }

    var selectorRules = {}

    // hàm thực hiện validate
    function validate(inputElement, rule){
        var errorElement = getParent(inputElement, options.formGroupElement).querySelector(options.errorSelector);
        var errorMessage;

        // Lấy ra các rule của selector
        var rules = selectorRules[rule.selector];

        // lặp qua từng rule và kiểm tra
        // Nếu có lỗi thì dừng việc kiểm tra
        for(var i = 0; i < rules.length; i++){
            errorMessage = rules[i](inputElement.value);
            if(errorMessage) break;
        }

        if(errorMessage){
            errorElement.innerHTML = errorMessage;
            getParent(inputElement, options.formGroupElement).classList.add('invalid');
        }else{
            errorElement.innerHTML = '';
            getParent(inputElement, options.formGroupElement).classList.remove('invalid');
        }
        return !errorMessage // return false || true
    }
    // lấy element của form cần validate
    var formElement = document.querySelector(options.form);

    if(formElement){

        // khi submit form
        formElement.onsubmit = function (e){
            // e.preventDefault();

            var isFormValid = true;

            // lặp qua từng rules và validate
            options.rules.forEach(function (rule){
                var inputElement = formElement.querySelector(rule.selector);
                var isValid = validate(inputElement, rule);
                if(!isValid){
                    isFormValid = false;
                }
            })

            if(isFormValid){
                // trường hợp submit với JavaScript
                if(typeof options.onSubmit === 'function'){
                    var enableInputs = formElement.querySelectorAll('[name]:not([disabled])')
                    var formValues = Array.from(enableInputs).reduce(function(values,input){
                        values[input.name] = input.value
                        return values
                    },{})
                    options.onSubmit(formValues)
                }
                // Trường hợp submit với hành vi mặc định
                else{
                    formElement.submit();
                }
            }
        }

        // lặp qua mỗi rule và xử lý (lắng nghe sự kiện blur, input)
        options.rules.forEach(function(rule){

            // Lưu lại các rule cho mỗi input
            if(Array.isArray(selectorRules[rule.selector])){
                selectorRules[rule.selector].push(rule.test);
            }else{
                selectorRules[rule.selector] = [rule.test];
            }

            var inputElement = formElement.querySelector(rule.selector);

            if(inputElement){
                // xử lý trường hợp blur khỏi input
                inputElement.onblur = function(){
                    validate(inputElement,rule);
                }
                // xử lý mỗi khi người dùng nhập vào input
                inputElement.oninput = function(){
                    var errorElement = getParent(inputElement, options.formGroupElement).querySelector(options.errorSelector);
                    errorElement.innerHTML = '';
                    getParent(inputElement, options.formGroupElement).classList.remove('invalid');
                }
            }
        });
    }
}

// Định nghĩa rules
// Nguyên tắc của các rules:
// 1. Khi có lỗi => Trả ra message lỗi
// 2. Khi hợp lệ =? Không trả ra cái gì cả (undefined)
Validator.isRequired = function (selector, message){
    return {
        selector: selector,
        test: function (value){
            return value.trim() ? undefined : message || "Vui lòng nhập trường này."
        }
    }
}


Validator.minLength = function (selector,min, message){
    return {
        selector: selector,
        test: function (value){
            return value.length >= min ? undefined : message || `Vui lòng nhập tối thiểu ${min} ký tự`
        }
    }
}
