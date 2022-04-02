.class public Lcom/appnext/base/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/appnext/base/b/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appnext/base/b/f;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1a

    .line 30
    :cond_a
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static e(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    const-string v0, "connectivity"

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 21
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getKey()Ljava/lang/String;
    .registers 2

    .line 34
    invoke-static {}, Lcom/appnext/base/b/h;->aO()Lcom/appnext/base/b/h;

    invoke-static {}, Lcom/appnext/base/b/e;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appnext/core/f;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/base/b/h;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
