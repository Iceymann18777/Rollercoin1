.class Lcom/moat/analytics/mobile/mpub/o;
.super Lcom/moat/analytics/mobile/mpub/MoatFactory;


# direct methods
.method constructor <init>()V
    .registers 6

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/MoatFactory;-><init>()V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/o;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const-string v0, "Failed to initialize MoatFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SDK was not started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "[ERROR] "

    const-string v4, "Factory"

    invoke-static {v3, v2, v4, p0, v1}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/moat/analytics/mobile/mpub/n;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/moat/analytics/mobile/mpub/o$3;

    invoke-direct {p1, p0, v0, p2}, Lcom/moat/analytics/mobile/mpub/o$3;-><init>(Lcom/moat/analytics/mobile/mpub/o;Ljava/lang/ref/WeakReference;Ljava/util/Map;)V

    const-class p2, Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;

    invoke-static {p1, p2}, Lcom/moat/analytics/mobile/mpub/x;->a(Lcom/moat/analytics/mobile/mpub/x$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/moat/analytics/mobile/mpub/NativeVideoTracker;
    .registers 3

    new-instance v0, Lcom/moat/analytics/mobile/mpub/o$4;

    invoke-direct {v0, p0, p1}, Lcom/moat/analytics/mobile/mpub/o$4;-><init>(Lcom/moat/analytics/mobile/mpub/o;Ljava/lang/String;)V

    const-class p1, Lcom/moat/analytics/mobile/mpub/NativeVideoTracker;

    invoke-static {v0, p1}, Lcom/moat/analytics/mobile/mpub/x;->a(Lcom/moat/analytics/mobile/mpub/x$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/mpub/NativeVideoTracker;

    return-object p1
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/mpub/WebAdTracker;
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/moat/analytics/mobile/mpub/o$2;

    invoke-direct {p1, p0, v0}, Lcom/moat/analytics/mobile/mpub/o$2;-><init>(Lcom/moat/analytics/mobile/mpub/o;Ljava/lang/ref/WeakReference;)V

    const-class v0, Lcom/moat/analytics/mobile/mpub/WebAdTracker;

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/mpub/x;->a(Lcom/moat/analytics/mobile/mpub/x$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/mpub/WebAdTracker;

    return-object p1
.end method

.method private a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/mpub/WebAdTracker;
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/moat/analytics/mobile/mpub/o$1;

    invoke-direct {p1, p0, v0}, Lcom/moat/analytics/mobile/mpub/o$1;-><init>(Lcom/moat/analytics/mobile/mpub/o;Ljava/lang/ref/WeakReference;)V

    const-class v0, Lcom/moat/analytics/mobile/mpub/WebAdTracker;

    invoke-static {p1, v0}, Lcom/moat/analytics/mobile/mpub/x;->a(Lcom/moat/analytics/mobile/mpub/x$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/moat/analytics/mobile/mpub/WebAdTracker;

    return-object p1
.end method

.method private a(Lcom/moat/analytics/mobile/mpub/MoatPlugin;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/mpub/MoatPlugin<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/moat/analytics/mobile/mpub/MoatPlugin;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a()Z
    .registers 2

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/k;->getInstance()Lcom/moat/analytics/mobile/mpub/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/k;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/k;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createCustomTracker(Lcom/moat/analytics/mobile/mpub/MoatPlugin;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/mpub/MoatPlugin<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/o;->a(Lcom/moat/analytics/mobile/mpub/MoatPlugin;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    invoke-interface {p1}, Lcom/moat/analytics/mobile/mpub/MoatPlugin;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/mpub/o;->a(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    new-instance p1, Lcom/moat/analytics/mobile/mpub/v$c;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/mpub/v$c;-><init>()V

    return-object p1
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/mpub/NativeVideoTracker;
    .registers 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/o;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/mpub/NativeVideoTracker;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    new-instance p1, Lcom/moat/analytics/mobile/mpub/v$d;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/mpub/v$d;-><init>()V

    return-object p1
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/mpub/WebAdTracker;
    .registers 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/o;->a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/mpub/WebAdTracker;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    new-instance p1, Lcom/moat/analytics/mobile/mpub/v$e;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/mpub/v$e;-><init>()V

    return-object p1
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/mpub/WebAdTracker;
    .registers 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/o;->a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/mpub/WebAdTracker;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    new-instance p1, Lcom/moat/analytics/mobile/mpub/v$e;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/mpub/v$e;-><init>()V

    return-object p1
.end method
