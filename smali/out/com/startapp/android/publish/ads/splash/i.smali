.class public Lcom/startapp/android/publish/ads/splash/i;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;
    .registers 4

    .line 37
    sget-object v0, Lcom/startapp/android/publish/ads/splash/i$1;->a:[I

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getTheme()Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/ads/splash/SplashConfig$Theme;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    const/4 p0, 0x0

    goto :goto_2e

    .line 54
    :pswitch_11
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/splash/i;->b(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;

    move-result-object p0

    goto :goto_2e

    .line 51
    :pswitch_16
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/splash/i;->c(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;

    move-result-object p0

    goto :goto_2e

    .line 48
    :pswitch_1b
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/splash/i;->d(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;

    move-result-object p0

    goto :goto_2e

    .line 45
    :pswitch_20
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/splash/i;->e(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;

    move-result-object p0

    goto :goto_2e

    .line 42
    :pswitch_25
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/splash/i;->f(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;

    move-result-object p0

    goto :goto_2e

    .line 39
    :pswitch_2a
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/splash/i;->g(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;

    move-result-object p0

    :goto_2e
    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_11
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;
    .registers 6

    .line 63
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/splash/i;->h(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;

    move-result-object p0

    .line 65
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_38

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 67
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x64

    .line 69
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x6

    const/16 v1, 0x3d

    const/16 v2, 0x52

    .line 70
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x69

    .line 72
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 73
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0

    :array_38
    .array-data 4
        -0xdc8366
        -0x782e22
    .end array-data
.end method

.method private static c(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;
    .registers 5

    .line 79
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/splash/i;->h(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x2f

    const/16 v0, 0x35

    const/16 v1, 0x3f

    .line 81
    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 p1, 0x64

    .line 83
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0x33

    const/16 v1, 0xb5

    const/16 v2, 0xe5

    .line 84
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x69

    .line 86
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0x7a

    const/16 v1, 0x82

    const/16 v2, 0x8b

    .line 87
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method

.method private static d(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;
    .registers 6

    .line 93
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/splash/i;->h(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 97
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_4c

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 99
    div-int/2addr p0, v2

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p0, 0x64

    .line 103
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0xff

    .line 104
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p0, 0x69

    .line 106
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v1, 0xc6

    const/16 v2, 0x97

    .line 107
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1

    :array_4c
    .array-data 4
        -0x168d8
        -0xa000
    .end array-data
.end method

.method private static e(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;
    .registers 4

    .line 113
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/splash/i;->h(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;

    move-result-object p0

    .line 115
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_38

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 117
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x64

    .line 119
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0x33

    .line 120
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x69

    .line 122
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0x99

    .line 123
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0

    nop

    :array_38
    .array-data 4
        -0x3b3b3c
        -0x1
    .end array-data
.end method

.method private static f(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;
    .registers 6

    .line 129
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/splash/i;->h(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 133
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_4e

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 135
    div-int/2addr p0, v2

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p0, 0x64

    .line 139
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0x33

    .line 140
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p0, 0x69

    .line 142
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v0, 0xa2

    const/16 v1, 0xac

    const/16 v2, 0xaf

    .line 143
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1

    :array_4e
    .array-data 4
        -0xe0e0f
        -0x5c2b1b
    .end array-data
.end method

.method private static g(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;
    .registers 4

    .line 149
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/splash/i;->h(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;

    move-result-object p0

    .line 151
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_3a

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 153
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x64

    .line 155
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0xff

    .line 156
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x69

    .line 158
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 v0, 0xd0

    const/16 v1, 0xd2

    .line 159
    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0

    nop

    :array_3a
    .array-data 4
        -0xf99356
        -0xe5551d
        -0xf99356
    .end array-data
.end method

.method private static h(Landroid/content/Context;Lcom/startapp/android/publish/ads/splash/SplashConfig;)Landroid/view/View;
    .registers 24

    move-object/from16 v1, p0

    .line 171
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x57f00005

    .line 172
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    const/4 v0, -0x1

    .line 173
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 175
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 176
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xd

    .line 180
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    new-instance v0, Landroid/graphics/Point;

    const/16 v5, 0x96

    invoke-static {v1, v5}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v5

    const/16 v6, 0x1c

    invoke-static {v1, v6}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v0, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getOrientation()Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    move-result-object v5

    sget-object v6, Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;->PORTRAIT:Lcom/startapp/android/publish/ads/splash/SplashConfig$Orientation;

    const/16 v7, 0x8

    const/4 v8, 0x5

    const/16 v9, 0x64

    if-ne v5, v6, :cond_57

    .line 190
    invoke-static {v1, v8}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v5

    .line 191
    invoke-static {v1, v7}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v6

    const/16 v7, 0x4b

    .line 192
    invoke-static {v1, v7}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v7

    const/16 v8, 0x82

    .line 193
    invoke-static {v1, v8}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v8

    goto :goto_69

    .line 195
    :cond_57
    invoke-static {v1, v8}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v5

    .line 196
    invoke-static {v1, v7}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v6

    const/16 v7, 0x28

    .line 197
    invoke-static {v1, v7}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v7

    .line 198
    invoke-static {v1, v9}, Lcom/startapp/android/publish/adsCommon/Utils/h;->a(Landroid/content/Context;I)I

    move-result v8

    .line 201
    :goto_69
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v11, 0x65

    .line 203
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setId(I)V

    .line 204
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xa

    .line 207
    invoke-virtual {v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0xe

    .line 208
    invoke-virtual {v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v13, 0x0

    .line 209
    invoke-virtual {v12, v13, v13, v13, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 210
    invoke-virtual {v3, v10, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 214
    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/startapp/android/publish/ads/splash/SplashConfig;->getAppName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setId(I)V

    const/high16 v10, 0x41d00000    # 26.0f

    const/4 v12, 0x1

    .line 217
    invoke-virtual {v5, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v10, 0xff

    .line 218
    invoke-static {v10, v10, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0x11

    .line 219
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 220
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v14, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    invoke-virtual {v14, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v15, 0x3

    .line 224
    invoke-virtual {v14, v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 225
    invoke-virtual {v14, v13, v13, v13, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 226
    invoke-virtual {v3, v5, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x66

    .line 241
    :try_start_cc
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 242
    invoke-virtual {v7, v5}, Landroid/webkit/WebView;->setId(I)V

    .line 243
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    iget v14, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v11, v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 246
    invoke-virtual {v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 247
    invoke-virtual {v11, v15, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 248
    invoke-virtual {v11, v13, v13, v13, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 249
    invoke-static {v13, v13, v13, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 250
    invoke-virtual {v7, v13}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 251
    invoke-virtual {v7, v13}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    const/16 v17, 0x0

    const-string v18, "<html>\n<style>\n#fountainG{\nposition:relative;\nwidth:141px;\nheight:17px}\n.fountainG{\nposition:absolute;\ntop:0;\nbackground-color:#000000;\nwidth:18px;\nheight:18px;\n-moz-animation-name:bounce_fountainG;\n-moz-animation-duration:2s;\n-moz-animation-iteration-count:infinite;\n-moz-animation-direction:linear;\n-moz-transform:scale(.3);\n-moz-border-radius:12px;\n-webkit-animation-name:bounce_fountainG;\n-webkit-animation-duration:2s;\n-webkit-animation-iteration-count:infinite;\n-webkit-animation-direction:linear;\n-webkit-transform:scale(.3);\n-webkit-border-radius:12px;\n-ms-animation-name:bounce_fountainG;\n-ms-animation-duration:2s;\n-ms-animation-iteration-count:infinite;\n-ms-animation-direction:linear;\n-ms-transform:scale(.3);\n-ms-border-radius:12px;\n-o-animation-name:bounce_fountainG;\n-o-animation-duration:2s;\n-o-animation-iteration-count:infinite;\n-o-animation-direction:linear;\n-o-transform:scale(.3);\n-o-border-radius:12px;\nanimation-name:bounce_fountainG;\nanimation-duration:2s;\nanimation-iteration-count:infinite;\nanimation-direction:linear;\ntransform:scale(.3);\nborder-radius:12px;\n}\n#fountainG_1{\nleft:0;\n-moz-animation-delay:0.8s;\n-webkit-animation-delay:0.8s;\n-ms-animation-delay:0.8s;\n-o-animation-delay:0.8s;\nanimation-delay:0.8s;\n}\n#fountainG_2{\nleft:18px;\n-moz-animation-delay:1s;\n-webkit-animation-delay:1s;\n-ms-animation-delay:1s;\n-o-animation-delay:1s;\nanimation-delay:1s;\n}\n#fountainG_3{\nleft:35px;\n-moz-animation-delay:1.2s;\n-webkit-animation-delay:1.2s;\n-ms-animation-delay:1.2s;\n-o-animation-delay:1.2s;\nanimation-delay:1.2s;\n}\n#fountainG_4{\nleft:53px;\n-moz-animation-delay:1.4s;\n-webkit-animation-delay:1.4s;\n-ms-animation-delay:1.4s;\n-o-animation-delay:1.4s;\nanimation-delay:1.4s;\n}\n#fountainG_5{\nleft:71px;\n-moz-animation-delay:1.6s;\n-webkit-animation-delay:1.6s;\n-ms-animation-delay:1.6s;\n-o-animation-delay:1.6s;\nanimation-delay:1.6s;\n}\n#fountainG_6{\nleft:88px;\n-moz-animation-delay:1.8s;\n-webkit-animation-delay:1.8s;\n-ms-animation-delay:1.8s;\n-o-animation-delay:1.8s;\nanimation-delay:1.8s;\n}\n#fountainG_7{\nleft:106px;\n-moz-animation-delay:2s;\n-webkit-animation-delay:2s;\n-ms-animation-delay:2s;\n-o-animation-delay:2s;\nanimation-delay:2s;\n}\n#fountainG_8{\nleft:123px;\n-moz-animation-delay:2.2s;\n-webkit-animation-delay:2.2s;\n-ms-animation-delay:2.2s;\n-o-animation-delay:2.2s;\nanimation-delay:2.2s;\n}\n@-moz-keyframes bounce_fountainG{\n0%{\n-moz-transform:scale(1);\nbackground-color:#000000;\n}\n100%{\n-moz-transform:scale(.3);\nbackground-color:rgba(255,255,255,0.2);\n}\n}\n@-webkit-keyframes bounce_fountainG{\n0%{\n-webkit-transform:scale(1);\nbackground-color:#000000;\n}\n100%{\n-webkit-transform:scale(.3);\nbackground-color:rgba(255,255,255,0.2);\n}\n}\n@-ms-keyframes bounce_fountainG{\n0%{\n-ms-transform:scale(1);\nbackground-color:#000000;\n}\n100%{\n-ms-transform:scale(.3);\nbackground-color:rgba(255,255,255,0.2);\n}\n}\n@-o-keyframes bounce_fountainG{\n0%{\n-o-transform:scale(1);\nbackground-color:#000000;\n}\n100%{\n-o-transform:scale(.3);\nbackground-color:rgba(255,255,255,0.2);\n}\n}\n@keyframes bounce_fountainG{\n0%{\ntransform:scale(1);\nbackground-color:#000000;\n}\n100%{\ntransform:scale(.3);\nbackground-color:rgba(255,255,255,0.2);\n}\n}\n</style>\n<body style=\"margin:0;padding:0\">\n<div id=\"fountainG\">\n<div id=\"fountainG_1\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_2\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_3\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_4\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_5\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_6\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_7\" class=\"fountainG\">\n</div>\n<div id=\"fountainG_8\" class=\"fountainG\">\n</div>\n</div>\n</body>\n</html>"

    const-string v19, "text/html"

    const-string v20, "utf-8"

    const/16 v21, 0x0

    move-object/from16 v16, v7

    .line 252
    invoke-virtual/range {v16 .. v21}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v3, v7, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_105} :catch_106

    goto :goto_114

    :catch_106
    move-exception v0

    .line 257
    sget-object v6, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v7, "TemplatesLayout.getBaseTemplate - webview failed"

    const-string v9, ""

    invoke-static {v1, v6, v7, v0, v9}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_114
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "Loading..."

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x69

    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 263
    invoke-virtual {v0, v12, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0xd0

    const/16 v6, 0xd2

    .line 264
    invoke-static {v1, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 266
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 269
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 270
    invoke-virtual {v1, v15, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 271
    invoke-virtual {v1, v13, v13, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 272
    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method
