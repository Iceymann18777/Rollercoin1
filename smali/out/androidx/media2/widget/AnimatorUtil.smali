.class Landroidx/media2/widget/AnimatorUtil;
.super Ljava/lang/Object;
.source "AnimatorUtil.java"


# direct methods
.method static ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 p0, 0x1

    aput p1, v0, p0

    const-string p0, "translationY"

    .line 26
    invoke-static {p2, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method static ofTranslationYTogether(FF[Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 7

    .line 30
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 31
    array-length v1, p2

    if-nez v1, :cond_9

    return-object v0

    :cond_9
    const/4 v1, 0x0

    .line 32
    aget-object v1, p2, v1

    invoke-static {p0, p1, v1}, Landroidx/media2/widget/AnimatorUtil;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 33
    :goto_15
    array-length v3, p2

    if-ge v2, v3, :cond_24

    .line 34
    aget-object v3, p2, v2

    invoke-static {p0, p1, v3}, Landroidx/media2/widget/AnimatorUtil;->ofTranslationY(FFLandroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_24
    return-object v0
.end method
