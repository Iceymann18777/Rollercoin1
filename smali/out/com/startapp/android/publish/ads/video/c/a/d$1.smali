.class Lcom/startapp/android/publish/ads/video/c/a/d$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/ads/video/c/a/d;->a()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/startapp/android/publish/ads/video/c/a/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/ads/video/c/a/d;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/ads/video/c/a/d;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/startapp/android/publish/ads/video/c/a/d$1;->a:Lcom/startapp/android/publish/ads/video/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/android/publish/ads/video/c/a/a/b;Lcom/startapp/android/publish/ads/video/c/a/a/b;)I
    .registers 11

    .line 31
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/d$1;->a:Lcom/startapp/android/publish/ads/video/c/a/d;

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/startapp/android/publish/ads/video/c/a/d$1;->a:Lcom/startapp/android/publish/ads/video/c/a/d;

    invoke-static {v3}, Lcom/startapp/android/publish/ads/video/c/a/d;->a(Lcom/startapp/android/publish/ads/video/c/a/d;)D

    move-result-wide v3

    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/c/a/d$1;->a:Lcom/startapp/android/publish/ads/video/c/a/d;

    invoke-static {v5}, Lcom/startapp/android/publish/ads/video/c/a/d;->b(Lcom/startapp/android/publish/ads/video/c/a/d;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/startapp/android/publish/ads/video/c/a/d;->a(Lcom/startapp/android/publish/ads/video/c/a/d;IIDI)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 32
    iget-object v2, p0, Lcom/startapp/android/publish/ads/video/c/a/d$1;->a:Lcom/startapp/android/publish/ads/video/c/a/d;

    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->e()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/startapp/android/publish/ads/video/c/a/d$1;->a:Lcom/startapp/android/publish/ads/video/c/a/d;

    invoke-static {v5}, Lcom/startapp/android/publish/ads/video/c/a/d;->a(Lcom/startapp/android/publish/ads/video/c/a/d;)D

    move-result-wide v5

    iget-object v7, p0, Lcom/startapp/android/publish/ads/video/c/a/d$1;->a:Lcom/startapp/android/publish/ads/video/c/a/d;

    invoke-static {v7}, Lcom/startapp/android/publish/ads/video/c/a/d;->b(Lcom/startapp/android/publish/ads/video/c/a/d;)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/startapp/android/publish/ads/video/c/a/d;->a(Lcom/startapp/android/publish/ads/video/c/a/d;IIDI)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v4, -0x1

    cmpg-double v5, v0, v2

    if-gez v5, :cond_52

    return v4

    :cond_52
    const/4 v5, 0x1

    cmpl-double v6, v0, v2

    if-lez v6, :cond_58

    return v5

    .line 43
    :cond_58
    invoke-virtual {p1}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->c()Ljava/lang/Integer;

    move-result-object p1

    .line 44
    invoke-virtual {p2}, Lcom/startapp/android/publish/ads/video/c/a/a/b;->c()Ljava/lang/Integer;

    move-result-object p2

    if-nez p1, :cond_66

    if-nez p2, :cond_66

    const/4 p1, 0x0

    return p1

    :cond_66
    if-nez p1, :cond_69

    return v5

    :cond_69
    if-nez p2, :cond_6c

    return v4

    .line 53
    :cond_6c
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/d$1;->a:Lcom/startapp/android/publish/ads/video/c/a/d;

    invoke-static {v0}, Lcom/startapp/android/publish/ads/video/c/a/d;->c(Lcom/startapp/android/publish/ads/video/c/a/d;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/startapp/android/publish/ads/video/c/a/d$1;->a:Lcom/startapp/android/publish/ads/video/c/a/d;

    invoke-static {v0}, Lcom/startapp/android/publish/ads/video/c/a/d;->c(Lcom/startapp/android/publish/ads/video/c/a/d;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/startapp/android/publish/ads/video/c/a/d;->a(II)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 28
    check-cast p1, Lcom/startapp/android/publish/ads/video/c/a/a/b;

    check-cast p2, Lcom/startapp/android/publish/ads/video/c/a/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/startapp/android/publish/ads/video/c/a/d$1;->a(Lcom/startapp/android/publish/ads/video/c/a/a/b;Lcom/startapp/android/publish/ads/video/c/a/a/b;)I

    move-result p1

    return p1
.end method
