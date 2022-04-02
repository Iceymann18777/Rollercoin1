.class public Lcom/tappx/a/p3;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/a/p3$d;,
        Lcom/tappx/a/p3$f;,
        Lcom/tappx/a/p3$e;
    }
.end annotation


# instance fields
.field private final a:Lcom/tappx/a/s3;

.field private b:Z

.field private c:Z

.field private d:Landroid/graphics/drawable/StateListDrawable;

.field private e:Lcom/tappx/a/p3$e;

.field private f:Lcom/tappx/a/p3$d;

.field private g:Lcom/tappx/a/p3$f;

.field private h:Landroid/widget/TextView;

.field private i:Z

.field private j:Z

.field private final k:Lcom/tappx/a/s3$b;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/tappx/a/s3;

    invoke-direct {v0}, Lcom/tappx/a/s3;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tappx/a/p3;-><init>(Landroid/content/Context;Lcom/tappx/a/s3;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tappx/a/s3;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3
    sget-object p1, Lcom/tappx/a/p3$e;->a:Lcom/tappx/a/p3$e;

    iput-object p1, p0, Lcom/tappx/a/p3;->e:Lcom/tappx/a/p3$e;

    .line 29
    sget-object p1, Lcom/tappx/a/p3$d;->d:Lcom/tappx/a/p3$d;

    iput-object p1, p0, Lcom/tappx/a/p3;->f:Lcom/tappx/a/p3$d;

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/tappx/a/p3;->i:Z

    .line 36
    iput-boolean p1, p0, Lcom/tappx/a/p3;->j:Z

    .line 97
    new-instance p1, Lcom/tappx/a/p3$a;

    invoke-direct {p1, p0}, Lcom/tappx/a/p3$a;-><init>(Lcom/tappx/a/p3;)V

    iput-object p1, p0, Lcom/tappx/a/p3;->k:Lcom/tappx/a/s3$b;

    .line 110
    new-instance p1, Lcom/tappx/a/p3$b;

    invoke-direct {p1, p0}, Lcom/tappx/a/p3$b;-><init>(Lcom/tappx/a/p3;)V

    iput-object p1, p0, Lcom/tappx/a/p3;->l:Landroid/view/View$OnClickListener;

    .line 111
    iput-object p2, p0, Lcom/tappx/a/p3;->a:Lcom/tappx/a/s3;

    .line 112
    iget-object p1, p0, Lcom/tappx/a/p3;->k:Lcom/tappx/a/s3$b;

    invoke-virtual {p2, p1}, Lcom/tappx/a/s3;->a(Lcom/tappx/a/s3$b;)V

    .line 113
    invoke-direct {p0}, Lcom/tappx/a/p3;->d()V

    return-void
.end method

.method private a(Lcom/tappx/a/p3$e;)V
    .registers 5

    .line 5
    sget-object v0, Lcom/tappx/a/p3$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_13

    const/4 v2, 0x2

    if-eq p1, v2, :cond_15

    .line 17
    iget-object v1, p0, Lcom/tappx/a/p3;->d:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_15

    :cond_13
    const/16 v0, 0x8

    .line 21
    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/tappx/a/p3;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 22
    iget-object p1, p0, Lcom/tappx/a/p3;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/p3;Z)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/tappx/a/p3;->setCloseVisible(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tappx/a/p3;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/tappx/a/p3;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/tappx/a/p3;)Landroid/widget/TextView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tappx/a/p3;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method private c()V
    .registers 3

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/p3;->getCloseButtonLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/tappx/a/p3;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/tappx/a/p3;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tappx/a/p3;->e()V

    return-void
.end method

.method private d()V
    .registers 5

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tappx/a/p3;->h:Landroid/widget/TextView;

    .line 2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/tappx/a/p3;->d:Landroid/graphics/drawable/StateListDrawable;

    .line 3
    sget-object v1, Landroid/widget/FrameLayout;->SELECTED_STATE_SET:[I

    sget-object v2, Lcom/tappx/a/e4;->e:Lcom/tappx/a/e4;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tappx/a/e4;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/tappx/a/p3;->d:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/widget/FrameLayout;->ENABLED_STATE_SET:[I

    sget-object v2, Lcom/tappx/a/e4;->c:Lcom/tappx/a/e4;

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tappx/a/e4;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lcom/tappx/a/p3;->d:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    sget-object v2, Lcom/tappx/a/e4;->d:Lcom/tappx/a/e4;

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tappx/a/e4;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v0, p0, Lcom/tappx/a/p3;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tappx/a/p3;->d:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v0, p0, Lcom/tappx/a/p3;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tappx/a/p3;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/tappx/a/p3;->h:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object v0, p0, Lcom/tappx/a/p3;->h:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 19
    iget-object v0, p0, Lcom/tappx/a/p3;->h:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 20
    iget-object v0, p0, Lcom/tappx/a/p3;->h:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 21
    invoke-direct {p0}, Lcom/tappx/a/p3;->c()V

    return-void
.end method

.method private e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/a/p3;->a:Lcom/tappx/a/s3;

    invoke-virtual {v0}, Lcom/tappx/a/s3;->b()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    .line 5
    iget-object v0, p0, Lcom/tappx/a/p3;->g:Lcom/tappx/a/p3$f;

    if-eqz v0, :cond_14

    .line 6
    invoke-interface {v0}, Lcom/tappx/a/p3$f;->a()V

    :cond_14
    return-void
.end method

.method private f()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/tappx/a/p3;->h:Landroid/widget/TextView;

    if-eq v1, v2, :cond_12

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method private g()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tappx/a/p3;->i:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/tappx/a/p3;->j:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 2
    :goto_b
    iget-boolean v1, p0, Lcom/tappx/a/p3;->c:Z

    if-eqz v0, :cond_17

    if-eqz v1, :cond_14

    .line 6
    sget-object v0, Lcom/tappx/a/p3$e;->b:Lcom/tappx/a/p3$e;

    goto :goto_19

    .line 8
    :cond_14
    sget-object v0, Lcom/tappx/a/p3$e;->a:Lcom/tappx/a/p3$e;

    goto :goto_19

    .line 11
    :cond_17
    sget-object v0, Lcom/tappx/a/p3$e;->c:Lcom/tappx/a/p3$e;

    .line 13
    :goto_19
    iget-object v1, p0, Lcom/tappx/a/p3;->e:Lcom/tappx/a/p3$e;

    if-ne v0, v1, :cond_1e

    return-void

    .line 14
    :cond_1e
    iput-object v0, p0, Lcom/tappx/a/p3;->e:Lcom/tappx/a/p3$e;

    .line 15
    invoke-direct {p0, v0}, Lcom/tappx/a/p3;->a(Lcom/tappx/a/p3$e;)V

    return-void
.end method

.method private getCloseButtonLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1, v0}, Lcom/tappx/a/q3;->b(FLandroid/content/Context;)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2, v1}, Lcom/tappx/a/q3;->b(FLandroid/content/Context;)I

    move-result v1

    .line 3
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/tappx/a/p3;->f:Lcom/tappx/a/p3$d;

    invoke-virtual {v3}, Lcom/tappx/a/p3$d;->a()I

    move-result v3

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 4
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    return-object v2
.end method

.method private setCloseVisible(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/tappx/a/p3;->j:Z

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/p3;->g()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .registers 5

    if-gtz p1, :cond_3

    return-void

    .line 3
    :cond_3
    iput-boolean p2, p0, Lcom/tappx/a/p3;->b:Z

    .line 4
    iget-object p2, p0, Lcom/tappx/a/p3;->a:Lcom/tappx/a/s3;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lcom/tappx/a/s3;->a(J)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 4

    .line 23
    invoke-direct {p0}, Lcom/tappx/a/p3;->f()V

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a()Z
    .registers 2

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/tappx/a/p3;->a:Lcom/tappx/a/s3;

    invoke-virtual {v0}, Lcom/tappx/a/s3;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public b()Z
    .registers 2

    .line 2
    iget-boolean v0, p0, Lcom/tappx/a/p3;->i:Z

    return v0
.end method

.method public setCloseEnabled(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/tappx/a/p3;->i:Z

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/p3;->g()V

    return-void
.end method

.method public setCloseListener(Lcom/tappx/a/p3$f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tappx/a/p3;->g:Lcom/tappx/a/p3$f;

    return-void
.end method

.method public setClosePosition(Lcom/tappx/a/p3$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tappx/a/p3;->f:Lcom/tappx/a/p3$d;

    .line 2
    iget-object p1, p0, Lcom/tappx/a/p3;->h:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/tappx/a/p3;->getCloseButtonLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setInvisibleClose(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/tappx/a/p3;->c:Z

    .line 2
    invoke-direct {p0}, Lcom/tappx/a/p3;->g()V

    return-void
.end method
