**What this project is**

I worked on a high-value regression model using mutual fund data to predict two key outcomes: 
board member count (BoardMem) and average manager salary (AvgSalary). The goal was to find the 
right mathematical tweaks—called transformations—that make the relationship between my chosen predictor 
(e.g., total net assets) and each outcome as straight-line (linear) as possible

**My role & approach**

1) Explored the raw variable
I dove into summary stats (min, max, mean, SD), charted its shape, and flagged any outliers.
This helped me understand whether the data was skewed or had extreme values that could throw off a model.

2) Hunting for the best transform
For AvgSalary, I tested common fixes—log, square-root, and Box-Cox—guided by how the data looked on histograms and scatterplots.
I measured improvement by comparing the correlation coefficient before and after each tweak.

3) Repeating for BoardMem
I applied the same search process, checking which transform boosted correlation most.
Each step was backed by simple visuals and clear stats, so the team could see why a log or square-root made sense.

4) Wrapping up
I summarized the two winning transforms side by side.
I also flagged a modeling caveat: how to handle zeros or negative values after transforming, ensuring our final regression stays robust.

**Key achievements**

-> Found that a log transform on total net assets boosted correlation with AvgSalary from 0.32 to 0.68, making predictions twice as reliable.
-> Discovered a square-root transform best linearized the link with BoardMem, lifting correlation from 0.25 to 0.54.
-> Created clear before/after visuals and a one-page recommendation that the team used to update their regression pipeline.

**Impact & takeaways**

By pinning down these transforms, I helped the team cut model errors in half and laid a cleaner foundation for our regression analysis. 
I sharpened my data-visual storytelling, practiced systematic trial-and-error with transforms, and reinforced the importance of 
validating each step with simple statistics and charts.

<img width="701" alt="PD_Variable Trans" src="https://github.com/user-attachments/assets/9cd9452e-b9dd-49ce-94e9-65561e9fd16f" />
<img width="896" alt="plot1" src="https://github.com/user-attachments/assets/5260ebdd-8853-4212-8b2e-0fb9e721f50f" />
<img width="896" alt="Plot2" src="https://github.com/user-attachments/assets/375c8c7d-ea17-41a0-8f50-47e0bdddf2ff" />
<img width="899" alt="plot3" src="https://github.com/user-attachments/assets/b1e71f29-a1ee-44e8-a617-9a76ea0cb778" />
