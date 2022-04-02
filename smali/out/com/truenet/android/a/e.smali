.class public final Lcom/truenet/android/a/e;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private final a:Landroid/net/NetworkInfo;

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Ljava/lang/String;

.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truenet/android/a/e;->f:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 24
    invoke-static {p1, v0}, Lcom/truenet/android/a/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 25
    iget-object p1, p0, Lcom/truenet/android/a/e;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/truenet/android/a/d;->a(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    .line 24
    :goto_1e
    iput-object p1, p0, Lcom/truenet/android/a/e;->a:Landroid/net/NetworkInfo;

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 27
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    iput-boolean p1, p0, Lcom/truenet/android/a/e;->b:Z

    .line 28
    iget-object v1, p0, Lcom/truenet/android/a/e;->a:Landroid/net/NetworkInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_3a

    if-eqz p1, :cond_3a

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-ne p1, v2, :cond_3a

    const/4 p1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p1, 0x0

    :goto_3b
    iput-boolean p1, p0, Lcom/truenet/android/a/e;->c:Z

    .line 29
    iget-object p1, p0, Lcom/truenet/android/a/e;->a:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_4c

    iget-boolean v1, p0, Lcom/truenet/android/a/e;->b:Z

    if-eqz v1, :cond_4c

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_4c

    const/4 v0, 0x1

    :cond_4c
    iput-boolean v0, p0, Lcom/truenet/android/a/e;->d:Z

    const-string p1, ""

    if-eqz v0, :cond_5e

    .line 31
    iget-object v0, p0, Lcom/truenet/android/a/e;->a:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    :goto_5c
    move-object p1, v0

    goto :goto_6d

    .line 32
    :cond_5e
    iget-boolean v0, p0, Lcom/truenet/android/a/e;->c:Z

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/truenet/android/a/e;->a:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    goto :goto_5c

    .line 30
    :cond_6d
    :goto_6d
    iput-object p1, p0, Lcom/truenet/android/a/e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/truenet/android/a/e;->e:Ljava/lang/String;

    return-object v0
.end method
