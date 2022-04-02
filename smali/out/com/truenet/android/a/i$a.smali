.class public final Lcom/truenet/android/a/i$a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truenet/android/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(La/a/b/b/e;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/truenet/android/a/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, La/a/b/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/truenet/android/a/i;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 47
    invoke-static {}, Lcom/truenet/android/a/i;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_14

    invoke-static {}, La/a/b/b/h;->a()V

    :cond_14
    return-object p1

    .line 49
    :cond_15
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/truenet/android/a/i$a$a;

    invoke-direct {v2, p1, v0}, Lcom/truenet/android/a/i$a$a;-><init>(Landroid/content/Context;Ljava/util/concurrent/SynchronousQueue;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/truenet/android/a/i;->a(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/truenet/android/a/i;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3f

    invoke-static {}, La/a/b/b/h;->a()V

    :cond_3f
    return-object p1
.end method
