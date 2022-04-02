.class public Lcom/tappx/a/h1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tappx/a/h1;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tappx/a/h1;->a:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/tappx/a/d3;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 5
    :cond_c
    iget-object v0, p0, Lcom/tappx/a/h1;->a:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 6
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method
