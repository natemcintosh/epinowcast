# enw_nowcast_summary can extract the summarised nowcast as expected

    Code
      round_numerics(nowcast[, c("rhat", "ess_bulk", "ess_tail") := NULL])
    Output
          reference_date report_date .group max_confirm location age_group confirm
       1:     2021-08-03  2021-08-22      1         149       DE       00+     149
       2:     2021-08-04  2021-08-22      1         166       DE       00+     166
       3:     2021-08-05  2021-08-22      1         133       DE       00+     133
       4:     2021-08-06  2021-08-22      1         137       DE       00+     137
       5:     2021-08-07  2021-08-22      1         139       DE       00+     139
       6:     2021-08-08  2021-08-22      1          97       DE       00+      97
       7:     2021-08-09  2021-08-22      1          58       DE       00+      58
       8:     2021-08-10  2021-08-22      1         175       DE       00+     175
       9:     2021-08-11  2021-08-22      1         233       DE       00+     233
      10:     2021-08-12  2021-08-22      1         237       DE       00+     237
      11:     2021-08-13  2021-08-22      1         204       DE       00+     204
      12:     2021-08-14  2021-08-22      1         189       DE       00+     189
      13:     2021-08-15  2021-08-22      1         125       DE       00+     125
      14:     2021-08-16  2021-08-22      1          98       DE       00+      98
      15:     2021-08-17  2021-08-22      1         242       DE       00+     242
      16:     2021-08-18  2021-08-22      1         223       DE       00+     223
      17:     2021-08-19  2021-08-22      1         202       DE       00+     202
      18:     2021-08-20  2021-08-22      1         171       DE       00+     171
      19:     2021-08-21  2021-08-22      1         112       DE       00+     112
      20:     2021-08-22  2021-08-22      1          45       DE       00+      45
          cum_prop_reported delay prop_reported mean median  sd mad  q5 q20 q35 q50
       1:                 1    19             0  149    149   0   0 149 149 149 149
       2:                 1    18             0  168    167   1   1 166 166 167 167
       3:                 1    17             0  136    135   2   1 133 134 135 135
       4:                 1    16             0  141    141   2   3 138 139 140 141
       5:                 1    15             0  146    146   3   3 142 143 144 146
       6:                 1    14             0  104    103   3   3  99 101 102 103
       7:                 1    13             0   63     63   2   3  59  61  62  63
       8:                 1    12             0  185    185   4   4 179 182 184 185
       9:                 1    11             0  256    256   7   6 246 251 253 256
      10:                 1    10             0  268    267   8   7 257 261 264 267
      11:                 1     9             0  236    235   8   7 225 229 232 235
      12:                 1     8             0  231    230  10   9 216 223 227 230
      13:                 1     7             0  166    164  10  10 150 157 161 164
      14:                 1     6             0  130    129   8   7 118 123 126 129
      15:                 1     5             0  294    292  12  12 276 283 288 292
      16:                 1     4             0  294    292  17  15 269 280 287 292
      17:                 1     3             0  293    291  21  22 261 274 282 291
      18:                 1     2             0  293    291  28  27 253 270 280 291
      19:                 1     1             0  310    305  51  47 240 267 288 305
      20:                 1     0             1  382    366 106  95 246 292 331 366
          q65 q80 q95
       1: 149 149 149
       2: 168 169 170
       3: 136 137 139
       4: 142 143 145
       5: 147 148 152
       6: 105 106 109
       7:  64  65  67
       8: 186 188 192
       9: 259 262 267
      10: 270 274 282
      11: 239 243 251
      12: 234 238 249
      13: 169 174 184
      14: 132 136 145
      15: 297 303 316
      16: 298 306 323
      17: 299 310 333
      18: 301 313 342
      19: 322 348 403
      20: 403 459 580

# enw_nowcast_summary can extract the summarised nowcast with custom quantiles

    Code
      round_numerics(nowcast[, c("rhat", "ess_bulk", "ess_tail") := NULL])
    Output
          reference_date report_date .group max_confirm location age_group confirm
       1:     2021-08-03  2021-08-22      1         149       DE       00+     149
       2:     2021-08-04  2021-08-22      1         166       DE       00+     166
       3:     2021-08-05  2021-08-22      1         133       DE       00+     133
       4:     2021-08-06  2021-08-22      1         137       DE       00+     137
       5:     2021-08-07  2021-08-22      1         139       DE       00+     139
       6:     2021-08-08  2021-08-22      1          97       DE       00+      97
       7:     2021-08-09  2021-08-22      1          58       DE       00+      58
       8:     2021-08-10  2021-08-22      1         175       DE       00+     175
       9:     2021-08-11  2021-08-22      1         233       DE       00+     233
      10:     2021-08-12  2021-08-22      1         237       DE       00+     237
      11:     2021-08-13  2021-08-22      1         204       DE       00+     204
      12:     2021-08-14  2021-08-22      1         189       DE       00+     189
      13:     2021-08-15  2021-08-22      1         125       DE       00+     125
      14:     2021-08-16  2021-08-22      1          98       DE       00+      98
      15:     2021-08-17  2021-08-22      1         242       DE       00+     242
      16:     2021-08-18  2021-08-22      1         223       DE       00+     223
      17:     2021-08-19  2021-08-22      1         202       DE       00+     202
      18:     2021-08-20  2021-08-22      1         171       DE       00+     171
      19:     2021-08-21  2021-08-22      1         112       DE       00+     112
      20:     2021-08-22  2021-08-22      1          45       DE       00+      45
          cum_prop_reported delay prop_reported mean median  sd mad  q5 q50 q95
       1:                 1    19             0  149    149   0   0 149 149 149
       2:                 1    18             0  168    167   1   1 166 167 170
       3:                 1    17             0  136    135   2   1 133 135 139
       4:                 1    16             0  141    141   2   3 138 141 145
       5:                 1    15             0  146    146   3   3 142 146 152
       6:                 1    14             0  104    103   3   3  99 103 109
       7:                 1    13             0   63     63   2   3  59  63  67
       8:                 1    12             0  185    185   4   4 179 185 192
       9:                 1    11             0  256    256   7   6 246 256 267
      10:                 1    10             0  268    267   8   7 257 267 282
      11:                 1     9             0  236    235   8   7 225 235 251
      12:                 1     8             0  231    230  10   9 216 230 249
      13:                 1     7             0  166    164  10  10 150 164 184
      14:                 1     6             0  130    129   8   7 118 129 145
      15:                 1     5             0  294    292  12  12 276 292 316
      16:                 1     4             0  294    292  17  15 269 292 323
      17:                 1     3             0  293    291  21  22 261 291 333
      18:                 1     2             0  293    291  28  27 253 291 342
      19:                 1     1             0  310    305  51  47 240 305 403
      20:                 1     0             1  382    366 106  95 246 366 580

