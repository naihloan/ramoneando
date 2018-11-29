window.addEventListener('load', function(event) {
    var step = 1;
    var currentStep;
    var body = document.getElementsByTagName('body')[0];
    body.classList.add('step1');

    var container = document.getElementsByClassName('container')[0];


    // var btnRight = document.getElementsByClassName('rightarrow')[0];

    // btnRight.addEventListener('click', function(event) {
    //     currentStep = step;
    //     step += 1;
    //     if (step > 8) {
    //         step = 0;
    //     }
    //     setStep();
    // });

    // var btnLeft = document.getElementsByClassName('leftarrow')[0];

    // btnLeft.addEventListener('click', function(event) {
    //     currentStep = step;
    //     step -= 1;
    //     if (step < 0) {
    //         step = 8;
    //     }
    //     setStep();
    // });

    // function setStep() {
    //     body.classList.replace('step' + currentStep.toString(), 'step' + step.toString());
    // }

    this.setTimeout(() => {
        body.classList.remove('loading');
        this.setTimeout(() => {
            body.classList.remove('background');
            container.classList.add('show');
        }, 0.1);
    }, 0.1);
        // }, 1000);
    // }, 1000);
    // }, 3000);

});


