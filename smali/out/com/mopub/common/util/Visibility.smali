.class public Lcom/mopub/common/util/Visibility;
.super Ljava/lang/Object;
.source "Visibility.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasScreenVisibilityChanged(II)Z
    .registers 2

    .line 18
    invoke-static {p0}, Lcom/mopub/common/util/Visibility;->isScreenVisible(I)Z

    move-result p0

    invoke-static {p1}, Lcom/mopub/common/util/Visibility;->isScreenVisible(I)Z

    move-result p1

    if-eq p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static isScreenVisible(I)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method
