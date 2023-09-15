# How to use

We implemented the six classic software reliability models, i.e., JM, GO, MO, Schneidewind, Duane, LV models. And based on non-parametric and parametric bootstrap resampling methods, we improved these six modesl. 

Requirements: Matlab

We take JM and its improved models to show how to use our implementations.

To run the orignal JM model:

```bash
[predict_data, parameters] = JM_predict(input_data);
```
Note: the input_data are culmulated failire times (MTTFs), the predict_data are also model calculated culmulated failire times. If you want to convert from/to MTBFs, please use tbf2ttf.m/ttf2tbf.m.

To run the non-parametric bootstrap improved JM model:

```bash
[predict_data, parameters] = JM_predict_NPB(input_data);
```

To run the parametric bootstrap improved orignal JM models:

```bash
[predict_data, parameters] = JM_predict_PB(input_data);
```

The other models can be executed as above commands, we do not give each for brief.

Besides, we give 14 popular failure datasets (data1.mat - data14.mat) in verification of software reliability models.
