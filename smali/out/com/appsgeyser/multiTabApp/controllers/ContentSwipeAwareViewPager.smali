.class public Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "ContentSwipeAwareViewPager.java"


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->enabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->enabled:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 21
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->enabled:Z

    if-nez v0, :cond_c

    goto :goto_11

    .line 24
    :cond_c
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 30
    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->enabled:Z

    if-nez v0, :cond_c

    goto :goto_11

    .line 33
    :cond_c
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x0

    return p1
.end method

.method public setPagingEnabled(Z)V
    .registers 2

    .line 38
    iput-boolean p1, p0, Lcom/appsgeyser/multiTabApp/controllers/ContentSwipeAwareViewPager;->enabled:Z

    return-void
.end method
