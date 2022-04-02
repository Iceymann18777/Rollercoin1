.class Landroidx/transition/ViewGroupUtils;
.super Ljava/lang/Object;
.source "ViewGroupUtils.java"


# static fields
.field private static sTryHiddenSuppressLayout:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method static getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;
    .registers 3

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    .line 47
    new-instance v0, Landroidx/transition/ViewGroupOverlayApi18;

    invoke-direct {v0, p0}, Landroidx/transition/ViewGroupOverlayApi18;-><init>(Landroid/view/ViewGroup;)V

    return-object v0

    .line 49
    :cond_c
    invoke-static {p0}, Landroidx/transition/ViewGroupOverlayApi14;->createFrom(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayApi14;

    move-result-object p0

    return-object p0
.end method

.method private static hiddenSuppressLayout(Landroid/view/ViewGroup;Z)V
    .registers 3

    .line 68
    sget-boolean v0, Landroidx/transition/ViewGroupUtils;->sTryHiddenSuppressLayout:Z

    if-eqz v0, :cond_b

    .line 72
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_b

    :catch_8
    const/4 p0, 0x0

    .line 74
    sput-boolean p0, Landroidx/transition/ViewGroupUtils;->sTryHiddenSuppressLayout:Z

    :cond_b
    :goto_b
    return-void
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .registers 4

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_a

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    goto :goto_17

    .line 58
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_14

    .line 59
    invoke-static {p0, p1}, Landroidx/transition/ViewGroupUtils;->hiddenSuppressLayout(Landroid/view/ViewGroup;Z)V

    goto :goto_17

    .line 61
    :cond_14
    invoke-static {p0, p1}, Landroidx/transition/ViewGroupUtilsApi14;->suppressLayout(Landroid/view/ViewGroup;Z)V

    :goto_17
    return-void
.end method
