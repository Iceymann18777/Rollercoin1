.class public Lcom/tappx/sdk/android/views/PrivacyView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Z

.field private e:Lcom/tappx/a/n2;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/tappx/sdk/android/views/PrivacyView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/tappx/sdk/android/views/PrivacyView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/tappx/sdk/android/views/PrivacyView;->d()V

    return-void
.end method

.method private a(I)I
    .registers 4

    int-to-float p1, p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method static synthetic a(Lcom/tappx/sdk/android/views/PrivacyView;)Lcom/tappx/a/n2;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/tappx/sdk/android/views/PrivacyView;->e:Lcom/tappx/a/n2;

    return-object p0
.end method

.method private a()V
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/tappx/sdk/android/views/PrivacyView;->e:Lcom/tappx/a/n2;

    invoke-virtual {v0}, Lcom/tappx/a/n2;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 5
    iget-object v1, p0, Lcom/tappx/sdk/android/views/PrivacyView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method static synthetic a(Lcom/tappx/sdk/android/views/PrivacyView;Z)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/sdk/android/views/PrivacyView;->setCollapsed(Z)V

    return-void
.end method

.method private b()V
    .registers 3

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_8

    .line 5
    :catchall_8
    invoke-direct {p0}, Lcom/tappx/sdk/android/views/PrivacyView;->c()V

    return-void
.end method

.method static synthetic b(Lcom/tappx/sdk/android/views/PrivacyView;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/tappx/sdk/android/views/PrivacyView;->d:Z

    return p0
.end method

.method private c()V
    .registers 17

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x53

    .line 4
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 8
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 9
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v7, "#EEe7e7e7"

    .line 12
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v7, 0x1

    .line 14
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x11

    .line 15
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 16
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4}, Lcom/tappx/sdk/android/views/PrivacyView;->a(I)I

    move-result v10

    const/16 v11, 0x32

    invoke-direct {v0, v11}, Lcom/tappx/sdk/android/views/PrivacyView;->a(I)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v10, 0x3f800000    # 1.0f

    .line 17
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 18
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iput-object v5, v0, Lcom/tappx/sdk/android/views/PrivacyView;->a:Landroid/view/View;

    .line 21
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lcom/tappx/sdk/android/views/PrivacyView;->c:Landroid/widget/TextView;

    .line 22
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 23
    iget-object v9, v0, Lcom/tappx/sdk/android/views/PrivacyView;->c:Landroid/widget/TextView;

    const-string v10, "Do you want to change your ad experience?."

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v9, v0, Lcom/tappx/sdk/android/views/PrivacyView;->c:Landroid/widget/TextView;

    const-string v10, "#000000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object v9, v0, Lcom/tappx/sdk/android/views/PrivacyView;->c:Landroid/widget/TextView;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 26
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v11, 0x11d

    invoke-direct {v0, v11}, Lcom/tappx/sdk/android/views/PrivacyView;->a(I)I

    move-result v11

    invoke-direct {v9, v11, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 27
    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v11, 0x5

    .line 28
    invoke-direct {v0, v11}, Lcom/tappx/sdk/android/views/PrivacyView;->a(I)I

    move-result v12

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 29
    invoke-direct {v0, v11}, Lcom/tappx/sdk/android/views/PrivacyView;->a(I)I

    move-result v12

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 30
    iget-object v12, v0, Lcom/tappx/sdk/android/views/PrivacyView;->c:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v9, v0, Lcom/tappx/sdk/android/views/PrivacyView;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 33
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 36
    iput v8, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v8, 0x3

    .line 37
    invoke-direct {v0, v8}, Lcom/tappx/sdk/android/views/PrivacyView;->a(I)I

    move-result v13

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 38
    invoke-direct {v0, v8}, Lcom/tappx/sdk/android/views/PrivacyView;->a(I)I

    move-result v13

    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 39
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    invoke-direct {v0, v8}, Lcom/tappx/sdk/android/views/PrivacyView;->a(I)I

    move-result v12

    .line 42
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43
    invoke-virtual {v13, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v14, 0x8

    new-array v14, v14, [F

    int-to-float v12, v12

    aput v12, v14, v4

    aput v12, v14, v7

    const/4 v4, 0x2

    aput v12, v14, v4

    aput v12, v14, v8

    const/4 v8, 0x4

    aput v12, v14, v8

    aput v12, v14, v11

    const/4 v8, 0x6

    aput v12, v14, v8

    const/4 v8, 0x7

    aput v12, v14, v8

    .line 44
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    const-string v8, "#116073"

    .line 45
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v13, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 48
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/tappx/sdk/android/views/PrivacyView;->f:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v8, 0x14

    .line 50
    invoke-direct {v0, v8}, Lcom/tappx/sdk/android/views/PrivacyView;->a(I)I

    move-result v11

    .line 51
    invoke-direct {v0, v4}, Lcom/tappx/sdk/android/views/PrivacyView;->a(I)I

    move-result v4

    .line 52
    iget-object v12, v0, Lcom/tappx/sdk/android/views/PrivacyView;->f:Landroid/widget/TextView;

    invoke-virtual {v12, v11, v4, v11, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 53
    iget-object v12, v0, Lcom/tappx/sdk/android/views/PrivacyView;->f:Landroid/widget/TextView;

    const-string v14, "Yes"

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v12, v0, Lcom/tappx/sdk/android/views/PrivacyView;->f:Landroid/widget/TextView;

    const-string v14, "#ffffff"

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v12, v0, Lcom/tappx/sdk/android/views/PrivacyView;->f:Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 57
    iget-object v15, v0, Lcom/tappx/sdk/android/views/PrivacyView;->f:Landroid/widget/TextView;

    invoke-virtual {v15, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v12, v0, Lcom/tappx/sdk/android/views/PrivacyView;->f:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    new-instance v12, Landroid/view/View;

    invoke-direct {v12, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7}, Lcom/tappx/sdk/android/views/PrivacyView;->a(I)I

    move-result v3

    const/4 v7, -0x1

    invoke-direct {v15, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 63
    iput v11, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 64
    invoke-virtual {v12, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "#cacaca"

    .line 65
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/tappx/sdk/android/views/PrivacyView;->g:Landroid/widget/TextView;

    .line 69
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v3, v0, Lcom/tappx/sdk/android/views/PrivacyView;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v11, v4, v11, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 71
    iget-object v3, v0, Lcom/tappx/sdk/android/views/PrivacyView;->g:Landroid/widget/TextView;

    const-string v4, "No"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v3, v0, Lcom/tappx/sdk/android/views/PrivacyView;->g:Landroid/widget/TextView;

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v3, v0, Lcom/tappx/sdk/android/views/PrivacyView;->g:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 75
    invoke-direct {v0, v8}, Lcom/tappx/sdk/android/views/PrivacyView;->a(I)I

    move-result v4

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 76
    iget-object v4, v0, Lcom/tappx/sdk/android/views/PrivacyView;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    iget-object v3, v0, Lcom/tappx/sdk/android/views/PrivacyView;->g:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 82
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x53

    .line 84
    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 85
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iput-object v3, v0, Lcom/tappx/sdk/android/views/PrivacyView;->b:Landroid/view/View;

    .line 89
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-static {v1}, Lcom/tappx/a/h3;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private d()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/tappx/sdk/android/views/PrivacyView;->b()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tappx/a/o2;->a(Landroid/content/Context;)Lcom/tappx/a/o2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tappx/a/o2;->c()Lcom/tappx/a/n2;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/sdk/android/views/PrivacyView;->e:Lcom/tappx/a/n2;

    .line 3
    invoke-direct {p0}, Lcom/tappx/sdk/android/views/PrivacyView;->a()V

    .line 4
    iget-object v0, p0, Lcom/tappx/sdk/android/views/PrivacyView;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/tappx/sdk/android/views/PrivacyView$1;

    invoke-direct {v1, p0}, Lcom/tappx/sdk/android/views/PrivacyView$1;-><init>(Lcom/tappx/sdk/android/views/PrivacyView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/tappx/sdk/android/views/PrivacyView;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/tappx/sdk/android/views/PrivacyView$2;

    invoke-direct {v1, p0}, Lcom/tappx/sdk/android/views/PrivacyView$2;-><init>(Lcom/tappx/sdk/android/views/PrivacyView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/tappx/sdk/android/views/PrivacyView;->b:Landroid/view/View;

    new-instance v1, Lcom/tappx/sdk/android/views/PrivacyView$3;

    invoke-direct {v1, p0}, Lcom/tappx/sdk/android/views/PrivacyView$3;-><init>(Lcom/tappx/sdk/android/views/PrivacyView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, v0}, Lcom/tappx/sdk/android/views/PrivacyView;->setCollapsed(Z)V

    return-void
.end method

.method private setCollapsed(Z)V
    .registers 3

    .line 1
    iput-boolean p1, p0, Lcom/tappx/sdk/android/views/PrivacyView;->d:Z

    .line 2
    iget-object v0, p0, Lcom/tappx/sdk/android/views/PrivacyView;->a:Landroid/view/View;

    if-eqz p1, :cond_9

    const/16 p1, 0x8

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
