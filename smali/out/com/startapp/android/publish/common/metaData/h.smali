.class public Lcom/startapp/android/publish/common/metaData/h;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private enabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/h;->enabled:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .registers 4

    xor-int/lit8 p2, p2, 0x1

    .line 32
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "userDisabledSimpleToken"

    invoke-static {p1, v0, p2}, Lcom/startapp/android/publish/adsCommon/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lcom/startapp/android/publish/common/metaData/h;->enabled:Z

    return v0
.end method

.method public a(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "userDisabledSimpleToken"

    invoke-static {p1, v1, v0}, Lcom/startapp/android/publish/adsCommon/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/Context;)Z
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/startapp/android/publish/common/metaData/h;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/startapp/android/publish/common/metaData/h;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method
