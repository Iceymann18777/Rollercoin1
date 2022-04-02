.class public Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync;
.super Landroid/os/AsyncTask;
.source "DownloadDrawablesAsync.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DRAWABLE_FUTURE_TIMEOUT_SECONDS:J = 0xaL

.field public static final KEY_ICON:Ljava/lang/String; = "icon_key"

.field public static final KEY_IMAGE:Ljava/lang/String; = "image_key"


# instance fields
.field private mListener:Lcom/mopub/mobileads/dfp/adapters/DrawableDownloadListener;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/dfp/adapters/DrawableDownloadListener;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync;->mListener:Lcom/mopub/mobileads/dfp/adapters/DrawableDownloadListener;

    return-void
.end method

.method private getDrawableFuture(Ljava/net/URL;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync$1;

    invoke-direct {v0, p0, p1}, Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync$1;-><init>(Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync;Ljava/net/URL;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync;->doInBackground([Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    aget-object p1, p1, v0

    check-cast p1, Ljava/util/HashMap;

    .line 42
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "image_key"

    .line 45
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    invoke-direct {p0, v2, v0}, Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync;->getDrawableFuture(Ljava/net/URL;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object v2

    const-string v3, "icon_key"

    .line 47
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URL;

    invoke-direct {p0, p1, v0}, Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync;->getDrawableFuture(Ljava/net/URL;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 50
    :try_start_21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    .line 51
    invoke-interface {v2, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 52
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 53
    invoke-interface {p1, v4, v5, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 54
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 55
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_3e} :catch_3f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_21 .. :try_end_3e} :catch_3f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_21 .. :try_end_3e} :catch_3f

    return-object v2

    .line 59
    :catch_3f
    sget-object p1, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Native ad images failed to download"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 26
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_b

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync;->mListener:Lcom/mopub/mobileads/dfp/adapters/DrawableDownloadListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/dfp/adapters/DrawableDownloadListener;->onDownloadSuccess(Ljava/util/HashMap;)V

    goto :goto_10

    .line 87
    :cond_b
    iget-object p1, p0, Lcom/mopub/mobileads/dfp/adapters/DownloadDrawablesAsync;->mListener:Lcom/mopub/mobileads/dfp/adapters/DrawableDownloadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/dfp/adapters/DrawableDownloadListener;->onDownloadFailure()V

    :goto_10
    return-void
.end method
