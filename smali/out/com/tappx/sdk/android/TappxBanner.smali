.class public final Lcom/tappx/sdk/android/TappxBanner;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/tappx/a/c3$c;
.implements Lcom/tappx/sdk/android/ITappxBanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tappx/sdk/android/TappxBanner$AdSize;
    }
.end annotation


# instance fields
.field private a:Lcom/tappx/a/c3;

.field private b:Lcom/tappx/a/g2;

.field private final c:Lcom/tappx/a/e2;

.field d:Z

.field e:Z

.field f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Lcom/tappx/a/e2;

    invoke-direct {v0}, Lcom/tappx/a/e2;-><init>()V

    iput-object v0, p0, Lcom/tappx/sdk/android/TappxBanner;->c:Lcom/tappx/a/e2;

    .line 38
    invoke-direct {p0}, Lcom/tappx/sdk/android/TappxBanner;->c()V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/tappx/sdk/android/TappxBanner;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/tappx/sdk/android/TappxBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    invoke-direct {p0}, Lcom/tappx/sdk/android/TappxBanner;->c()V

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/tappx/sdk/android/TappxBanner;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/tappx/a/e2;

    invoke-direct {p1}, Lcom/tappx/a/e2;-><init>()V

    iput-object p1, p0, Lcom/tappx/sdk/android/TappxBanner;->c:Lcom/tappx/a/e2;

    .line 11
    invoke-direct {p0}, Lcom/tappx/sdk/android/TappxBanner;->c()V

    .line 12
    invoke-virtual {p0, p2}, Lcom/tappx/sdk/android/TappxBanner;->setAppKey(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/tappx/sdk/android/TappxBanner$AdSize;
    .registers 6

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const v3, -0x215ddd38

    if-eq v0, v3, :cond_3d

    const v3, 0x68795c9

    if-eq v0, v3, :cond_33

    const v3, 0x59df59c2

    if-eq v0, v3, :cond_29

    const v3, 0x60b65fb2

    if-eq v0, v3, :cond_1f

    goto :goto_47

    :cond_1f
    const-string v0, "728x90"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    const/4 p1, 0x1

    goto :goto_48

    :cond_29
    const-string v0, "320x50"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    const/4 p1, 0x0

    goto :goto_48

    :cond_33
    const-string v0, "smart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    const/4 p1, 0x3

    goto :goto_48

    :cond_3d
    const-string v0, "300x250"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    const/4 p1, 0x2

    goto :goto_48

    :cond_47
    :goto_47
    const/4 p1, -0x1

    :goto_48
    if-eqz p1, :cond_57

    if-eq p1, v1, :cond_54

    if-eq p1, v2, :cond_51

    .line 26
    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->SMART_BANNER:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object p1

    .line 27
    :cond_51
    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_300x250:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object p1

    .line 28
    :cond_54
    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_728x90:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object p1

    .line 29
    :cond_57
    sget-object p1, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_320x50:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    return-object p1
.end method

.method private a()V
    .registers 2

    .line 30
    iget-boolean v0, p0, Lcom/tappx/sdk/android/TappxBanner;->d:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/tappx/sdk/android/TappxBanner;->d:Z

    .line 32
    invoke-virtual {p0}, Lcom/tappx/sdk/android/TappxBanner;->loadAd()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .line 1
    sget-object v0, Lcom/tappx/sdk/android/R$styleable;->TappxParams:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3
    :try_start_7
    sget v0, Lcom/tappx/sdk/android/R$styleable;->TappxParams_txAppKey:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget v2, Lcom/tappx/sdk/android/R$styleable;->TappxParams_txAdSize:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    sget v3, Lcom/tappx/sdk/android/R$styleable;->TappxParams_txAutoPrivacyDisclaimer:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_23

    .line 6
    invoke-static {p1}, Lcom/tappx/sdk/android/Tappx;->getPrivacyManager(Landroid/content/Context;)Lcom/tappx/sdk/android/TappxPrivacyManager;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/tappx/sdk/android/TappxPrivacyManager;->setAutoPrivacyDisclaimerEnabled(Z)V

    .line 7
    :cond_23
    sget p1, Lcom/tappx/sdk/android/R$styleable;->TappxParams_txRefreshTime:I

    const/4 v3, -0x1

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eqz v0, :cond_2f

    .line 8
    invoke-virtual {p0, v0}, Lcom/tappx/sdk/android/TappxBanner;->setAppKey(Ljava/lang/String;)V

    :cond_2f
    if-eqz v2, :cond_34

    .line 9
    invoke-direct {p0, v2}, Lcom/tappx/sdk/android/TappxBanner;->setAdSizeFromString(Ljava/lang/String;)V

    :cond_34
    if-lez p1, :cond_39

    .line 10
    invoke-virtual {p0, p1}, Lcom/tappx/sdk/android/TappxBanner;->setRefreshTimeSeconds(I)V

    :cond_39
    if-eqz v0, :cond_3c

    const/4 v1, 0x1

    .line 11
    :cond_3c
    iput-boolean v1, p0, Lcom/tappx/sdk/android/TappxBanner;->d:Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3e} :catch_47
    .catchall {:try_start_7 .. :try_end_3e} :catchall_42

    .line 14
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4a

    :catchall_42
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    throw p1

    .line 16
    :catch_47
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :goto_4a
    return-void
.end method

.method private b()V
    .registers 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 2
    :goto_b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    .line 3
    :goto_14
    iget-object v4, p0, Lcom/tappx/sdk/android/TappxBanner;->a:Lcom/tappx/a/c3;

    invoke-virtual {v4}, Lcom/tappx/a/c3;->b()Z

    move-result v4

    .line 4
    iget-boolean v5, p0, Lcom/tappx/sdk/android/TappxBanner;->f:Z

    if-eqz v5, :cond_2a

    iget-boolean v5, p0, Lcom/tappx/sdk/android/TappxBanner;->g:Z

    if-eqz v5, :cond_2a

    if-eqz v0, :cond_2a

    if-eqz v3, :cond_2a

    if-eqz v4, :cond_2a

    const/4 v5, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x0

    .line 5
    :goto_2b
    iget-boolean v6, p0, Lcom/tappx/sdk/android/TappxBanner;->f:Z

    if-eqz v6, :cond_36

    if-eqz v0, :cond_36

    if-eqz v3, :cond_36

    if-eqz v4, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    .line 6
    :goto_37
    iget-boolean v0, p0, Lcom/tappx/sdk/android/TappxBanner;->e:Z

    if-eq v5, v0, :cond_42

    .line 7
    iput-boolean v5, p0, Lcom/tappx/sdk/android/TappxBanner;->e:Z

    .line 8
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxBanner;->b:Lcom/tappx/a/g2;

    invoke-virtual {v0, v5}, Lcom/tappx/a/g2;->b(Z)V

    :cond_42
    if-eqz v1, :cond_47

    .line 11
    invoke-direct {p0}, Lcom/tappx/sdk/android/TappxBanner;->a()V

    :cond_47
    return-void
.end method

.method private c()V
    .registers 3

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    invoke-static {}, Lcom/tappx/a/g2$c;->a()Lcom/tappx/a/g2$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tappx/a/g2$c;->a(Lcom/tappx/sdk/android/TappxBanner;)Lcom/tappx/a/g2;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/sdk/android/TappxBanner;->b:Lcom/tappx/a/g2;

    .line 3
    invoke-static {}, Lcom/tappx/a/c3$b;->a()Lcom/tappx/a/c3$b;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tappx/a/c3$b;->a(Landroid/content/Context;)Lcom/tappx/a/c3;

    move-result-object v0

    iput-object v0, p0, Lcom/tappx/sdk/android/TappxBanner;->a:Lcom/tappx/a/c3;

    .line 4
    invoke-virtual {v0, p0}, Lcom/tappx/a/c3;->a(Lcom/tappx/a/c3$c;)V

    .line 5
    sget-object v0, Lcom/tappx/sdk/android/TappxBanner$AdSize;->BANNER_320x50:Lcom/tappx/sdk/android/TappxBanner$AdSize;

    invoke-virtual {p0, v0}, Lcom/tappx/sdk/android/TappxBanner;->setAdSize(Lcom/tappx/sdk/android/TappxBanner$AdSize;)V

    return-void
.end method

.method private setAdSizeFromString(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tappx/sdk/android/TappxBanner;->a(Ljava/lang/String;)Lcom/tappx/sdk/android/TappxBanner$AdSize;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/tappx/sdk/android/TappxBanner;->setAdSize(Lcom/tappx/sdk/android/TappxBanner$AdSize;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxBanner;->b:Lcom/tappx/a/g2;

    invoke-virtual {v0}, Lcom/tappx/a/g2;->a()V

    .line 2
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxBanner;->a:Lcom/tappx/a/c3;

    invoke-virtual {v0}, Lcom/tappx/a/c3;->a()V

    return-void
.end method

.method public loadAd()V
    .registers 2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/tappx/sdk/android/TappxBanner;->loadAd(Lcom/tappx/sdk/android/AdRequest;)V

    return-void
.end method

.method public loadAd(Lcom/tappx/sdk/android/AdRequest;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/tappx/sdk/android/TappxBanner;->d:Z

    .line 2
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxBanner;->b:Lcom/tappx/a/g2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/g2;->a(Lcom/tappx/sdk/android/AdRequest;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/tappx/sdk/android/TappxBanner;->setAttachedToWindow(Z)V

    .line 3
    invoke-direct {p0}, Lcom/tappx/sdk/android/TappxBanner;->b()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/tappx/sdk/android/TappxBanner;->setAttachedToWindow(Z)V

    .line 3
    invoke-direct {p0}, Lcom/tappx/sdk/android/TappxBanner;->b()V

    return-void
.end method

.method public onDeviceScreenStateChanged(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tappx/sdk/android/TappxBanner;->b()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/tappx/sdk/android/TappxBanner;->c:Lcom/tappx/a/e2;

    invoke-virtual {p1, p0}, Lcom/tappx/a/e2;->a(Landroid/view/ViewGroup;)Lcom/tappx/a/e2$a;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/tappx/sdk/android/TappxBanner;->b:Lcom/tappx/a/g2;

    invoke-virtual {p1}, Lcom/tappx/a/e2$a;->a()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/tappx/a/g2;->a(I)V

    .line 4
    invoke-virtual {p1}, Lcom/tappx/a/e2$a;->b()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tappx/sdk/android/TappxBanner;->setVisibleOnScreen(Z)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    invoke-direct {p0}, Lcom/tappx/sdk/android/TappxBanner;->b()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 2
    invoke-direct {p0}, Lcom/tappx/sdk/android/TappxBanner;->b()V

    return-void
.end method

.method public setAdSize(Lcom/tappx/sdk/android/TappxBanner$AdSize;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxBanner;->b:Lcom/tappx/a/g2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/g2;->a(Lcom/tappx/sdk/android/TappxBanner$AdSize;)V

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxBanner;->b:Lcom/tappx/a/g2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/f2;->b(Ljava/lang/String;)V

    return-void
.end method

.method public setAttachedToWindow(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/tappx/sdk/android/TappxBanner;->f:Z

    return-void
.end method

.method public setEnableAutoRefresh(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxBanner;->b:Lcom/tappx/a/g2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/g2;->a(Z)V

    return-void
.end method

.method public setListener(Lcom/tappx/sdk/android/TappxBannerListener;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxBanner;->b:Lcom/tappx/a/g2;

    invoke-virtual {v0, p1}, Lcom/tappx/a/g2;->a(Lcom/tappx/sdk/android/TappxBannerListener;)V

    return-void
.end method

.method public setRefreshTimeSeconds(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tappx/sdk/android/TappxBanner;->b:Lcom/tappx/a/g2;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/tappx/a/g2;->b(I)V

    return-void
.end method

.method setVisibleOnScreen(Z)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/tappx/sdk/android/TappxBanner;->g:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    iput-boolean p1, p0, Lcom/tappx/sdk/android/TappxBanner;->g:Z

    .line 3
    invoke-direct {p0}, Lcom/tappx/sdk/android/TappxBanner;->b()V

    return-void
.end method
