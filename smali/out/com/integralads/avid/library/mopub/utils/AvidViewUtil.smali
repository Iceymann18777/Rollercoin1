.class public Lcom/integralads/avid/library/mopub/utils/AvidViewUtil;
.super Ljava/lang/Object;
.source "AvidViewUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isViewVisible(Landroid/view/View;)Z
    .registers 9

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 13
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1c

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    float-to-double v4, p0

    const-wide/16 v6, 0x0

    cmpl-double p0, v4, v6

    if-lez p0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1

    :cond_1c
    return v3
.end method
