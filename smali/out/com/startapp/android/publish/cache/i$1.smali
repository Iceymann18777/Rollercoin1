.class final Lcom/startapp/android/publish/cache/i$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/cache/i;->a(Landroid/content/Context;Lcom/startapp/android/publish/cache/i$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/startapp/android/publish/cache/i$e;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/cache/i$e;)V
    .registers 3

    .line 138
    iput-object p1, p0, Lcom/startapp/android/publish/cache/i$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/startapp/android/publish/cache/i$1;->b:Lcom/startapp/android/publish/cache/i$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/cache/i$1;->a:Landroid/content/Context;

    invoke-static {}, Lcom/startapp/android/publish/cache/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/startapp/common/a/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/startapp/android/publish/cache/i$1$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/cache/i$1$1;-><init>(Lcom/startapp/android/publish/cache/i$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_2b

    :catch_1b
    move-exception v0

    .line 150
    iget-object v1, p0, Lcom/startapp/android/publish/cache/i$1;->a:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, " DiskAdCacheManager.deleteDiskCacheAsync - Unexpected Thread Exception"

    const-string v4, ""

    .line 150
    invoke-static {v1, v2, v3, v0, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void
.end method
