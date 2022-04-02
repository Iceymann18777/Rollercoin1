.class final Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "CompositeOnPageChangeCallback.java"


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private throwCallbackListModifiedWhileInUse(Ljava/util/ConcurrentModificationException;)V
    .registers 4

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adding and removing callbacks during dispatch to callbacks is not supported"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 4

    .line 86
    :try_start_0
    iget-object v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 87
    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V
    :try_end_15
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception p1

    .line 90
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->throwCallbackListModifiedWhileInUse(Ljava/util/ConcurrentModificationException;)V

    :cond_1a
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 6

    .line 58
    :try_start_0
    iget-object v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 59
    invoke-virtual {v1, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V
    :try_end_15
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception p1

    .line 62
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->throwCallbackListModifiedWhileInUse(Ljava/util/ConcurrentModificationException;)V

    :cond_1a
    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    .line 72
    :try_start_0
    iget-object v0, p0, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 73
    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V
    :try_end_15
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception p1

    .line 76
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/CompositeOnPageChangeCallback;->throwCallbackListModifiedWhileInUse(Ljava/util/ConcurrentModificationException;)V

    :cond_1a
    return-void
.end method
