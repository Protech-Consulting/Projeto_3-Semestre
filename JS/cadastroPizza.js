inputNome = document.querySelector('#nome-pizza')
textNome = document.querySelector('#nome-pizza-text')

inputNome.addEventListener('keyup',function(){
    if(inputNome.value!= ''){
        textNome.innerHTML=inputNome.value
    }
    else{
        textNome.innerHTML='Nome da Pizza'
    }
})

selectTipoPizaa = document.querySelector('#select-tipo-pizza')
textTipoPizza = document.querySelector('#tipo-pizza-text')

selectTipoPizaa.addEventListener('change',function(){
    console.log(selectTipoPizaa.value)
    if(selectTipoPizaa.value!= ''){
        textTipoPizza.innerHTML=selectTipoPizaa.value
    }
    else{
        textTipoPizza.innerHTML='Tipo Pizza'
    }
})

inputDescricao = document.querySelector('#descricao-pizza')
textDescricao = document.querySelector('#descricao-pizza-text')

inputDescricao.addEventListener('keyup',function(){
    console.log(inputDescricao.value)
    if(inputDescricao.value!= ''){
        textDescricao.innerHTML=inputDescricao.value
    }
    else{
        textDescricao.innerHTML='Lorem ipsum dolor sit amet consectetur, adipisicing elit. Autem, voluptates.'
    }
})

inputValor = document.querySelector('#valor-pizza')
textValor = document.querySelector('#valor-pizza-text')

inputValor.addEventListener('keyup',function(){
    console.log(inputValor.value)
    if(inputValor.value!= ''){
        textValor.innerHTML="R$ "+inputValor.value+",00"
    }
    else{
        textValor.innerHTML='R$ 0.00'
    }
})