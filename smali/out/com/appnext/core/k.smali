.class public final Lcom/appnext/core/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;)V
    .registers 4

    .line 13
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appnext/core/k$1;

    invoke-direct {v1, p0, p1}, Lcom/appnext/core/k$1;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/p;)Z
    .registers 2

    .line 45
    invoke-virtual {p0}, Lcom/appnext/core/AppnextAd;->isGdpr()Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "gdpr"

    invoke-virtual {p1, p0}, Lcom/appnext/core/p;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method
