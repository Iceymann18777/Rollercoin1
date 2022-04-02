.class final Lcom/startapp/android/publish/cache/i$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/cache/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/cache/i$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/startapp/android/publish/cache/i$c;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/cache/i$c;)V
    .registers 3

    .line 176
    iput-object p1, p0, Lcom/startapp/android/publish/cache/i$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/startapp/android/publish/cache/i$2;->b:Lcom/startapp/android/publish/cache/i$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/cache/i$2;->a:Landroid/content/Context;

    .line 181
    invoke-static {}, Lcom/startapp/android/publish/cache/i;->b()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/startapp/android/publish/cache/i$b;

    .line 180
    invoke-static {v0, v1, v2}, Lcom/startapp/common/a/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 182
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/startapp/android/publish/cache/i$2$1;

    invoke-direct {v2, p0, v0}, Lcom/startapp/android/publish/cache/i$2$1;-><init>(Lcom/startapp/android/publish/cache/i$2;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_2e

    :catch_1e
    move-exception v0

    .line 189
    iget-object v1, p0, Lcom/startapp/android/publish/cache/i$2;->a:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, " DiskAdCacheManager.loadCacheKeysAsync - Unexpected Thread Exception"

    const-string v4, ""

    .line 189
    invoke-static {v1, v2, v3, v0, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method
