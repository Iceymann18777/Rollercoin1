.class Landroidx/transition/ViewUtilsBase;
.super Ljava/lang/Object;
.source "ViewUtilsBase.java"


# static fields
.field private static sSetFrameFetched:Z

.field private static sSetFrameMethod:Ljava/lang/reflect/Method;

.field private static sViewFlagsField:Ljava/lang/reflect/Field;

.field private static sViewFlagsFieldFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fetchSetFrame()V
    .registers 7

    .line 176
    sget-boolean v0, Landroidx/transition/ViewUtilsBase;->sSetFrameFetched:Z

    if-nez v0, :cond_33

    const/4 v0, 0x1

    .line 178
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "setFrame"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/transition/ViewUtilsBase;->sSetFrameMethod:Ljava/lang/reflect/Method;

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_28} :catch_29

    goto :goto_31

    :catch_29
    move-exception v1

    const-string v2, "ViewUtilsBase"

    const-string v3, "Failed to retrieve setFrame method"

    .line 182
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :goto_31
    sput-boolean v0, Landroidx/transition/ViewUtilsBase;->sSetFrameFetched:Z

    :cond_33
    return-void
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .registers 4

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 73
    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .registers 3

    .line 55
    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_14

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr p1, v0

    return p1

    .line 59
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .registers 4

    .line 64
    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    .line 65
    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_15
    return-void
.end method

.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .registers 9

    .line 142
    invoke-direct {p0}, Landroidx/transition/ViewUtilsBase;->fetchSetFrame()V

    .line 143
    sget-object v0, Landroidx/transition/ViewUtilsBase;->sSetFrameMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_35

    const/4 v1, 0x4

    :try_start_8
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 145
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_29} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_29} :catch_2a

    goto :goto_35

    :catch_2a
    move-exception p1

    .line 149
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_35
    :cond_35
    :goto_35
    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .registers 4

    .line 46
    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_14

    .line 48
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_17

    .line 50
    :cond_14
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_17
    return-void
.end method

.method public setTransitionVisibility(Landroid/view/View;I)V
    .registers 6

    .line 155
    sget-boolean v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsFieldFetched:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    .line 157
    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "mViewFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_1a

    :catch_13
    const-string v1, "ViewUtilsBase"

    const-string v2, "fetchViewFlagsField: "

    .line 160
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_1a
    sput-boolean v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsFieldFetched:Z

    .line 164
    :cond_1c
    sget-object v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2c

    .line 166
    :try_start_20
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 167
    sget-object v1, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    and-int/lit8 v0, v0, -0xd

    or-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    return-void
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 5

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 79
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1c

    .line 80
    check-cast v0, Landroid/view/View;

    .line 81
    invoke-virtual {p0, v0, p2}, Landroidx/transition/ViewUtilsBase;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 84
    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_36

    .line 87
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_36
    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 5

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 93
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 94
    check-cast v0, Landroid/view/View;

    .line 95
    invoke-virtual {p0, v0, p2}, Landroidx/transition/ViewUtilsBase;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 98
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_41

    .line 101
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 102
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 103
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    :cond_41
    return-void
.end method
