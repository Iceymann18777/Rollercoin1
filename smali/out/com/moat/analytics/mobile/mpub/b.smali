.class abstract Lcom/moat/analytics/mobile/mpub/b;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/moat/analytics/mobile/mpub/n;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/moat/analytics/mobile/mpub/j;

.field d:Lcom/moat/analytics/mobile/mpub/TrackerListener;

.field final e:Ljava/lang/String;

.field final f:Z

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/moat/analytics/mobile/mpub/z;

.field private final i:Z

.field private j:Z

.field private k:Z


# direct methods
.method constructor <init>(Landroid/view/View;ZZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/n;

    const/4 v0, 0x3

    const-string v1, "BaseTracker"

    const-string v2, "Initializing."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_26
    const-string v0, ""

    :goto_28
    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->g:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/moat/analytics/mobile/mpub/b;->i:Z

    iput-boolean p3, p0, Lcom/moat/analytics/mobile/mpub/b;->f:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/mpub/b;->j:Z

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/mpub/b;->k:Z

    new-instance p1, Lcom/moat/analytics/mobile/mpub/z;

    invoke-direct {p1}, Lcom/moat/analytics/mobile/mpub/z;-><init>()V

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/b;->h:Lcom/moat/analytics/mobile/mpub/z;

    return-void
.end method

.method private i()V
    .registers 6

    const/4 v0, 0x3

    const-string v1, "BaseTracker"

    const-string v2, "Attempting bridge installation."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_24

    new-instance v2, Lcom/moat/analytics/mobile/mpub/j;

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    sget-object v4, Lcom/moat/analytics/mobile/mpub/j$a;->a:Lcom/moat/analytics/mobile/mpub/j$a;

    invoke-direct {v2, v3, v4}, Lcom/moat/analytics/mobile/mpub/j;-><init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/mpub/j$a;)V

    iput-object v2, p0, Lcom/moat/analytics/mobile/mpub/b;->c:Lcom/moat/analytics/mobile/mpub/j;

    const-string v2, "Bridge installed."

    goto :goto_29

    :cond_24
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/moat/analytics/mobile/mpub/b;->c:Lcom/moat/analytics/mobile/mpub/j;

    const-string v2, "Bridge not installed, WebView is null."

    :goto_29
    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private j()V
    .registers 3

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/b;->j:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/moat/analytics/mobile/mpub/n;

    const-string v1, "Tracker already started"

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k()V
    .registers 3

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/b;->k:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/moat/analytics/mobile/mpub/n;

    const-string v1, "Tracker already stopped"

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/b;->i:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/b;->f:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method a(Landroid/webkit/WebView;)V
    .registers 3

    if-eqz p1, :cond_1d

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->b:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/moat/analytics/mobile/mpub/b;->c:Lcom/moat/analytics/mobile/mpub/j;

    if-nez p1, :cond_16

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->l()Z

    move-result p1

    if-nez p1, :cond_16

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->i()V

    :cond_16
    iget-object p1, p0, Lcom/moat/analytics/mobile/mpub/b;->c:Lcom/moat/analytics/mobile/mpub/j;

    if-eqz p1, :cond_1d

    invoke-virtual {p1, p0}, Lcom/moat/analytics/mobile/mpub/j;->a(Lcom/moat/analytics/mobile/mpub/b;)V

    :cond_1d
    return-void
.end method

.method a(Lcom/moat/analytics/mobile/mpub/j;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/b;->c:Lcom/moat/analytics/mobile/mpub/j;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    :try_start_0
    invoke-static {p2}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    invoke-static {p1, p2}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/moat/analytics/mobile/mpub/b;->d:Lcom/moat/analytics/mobile/mpub/TrackerListener;

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/moat/analytics/mobile/mpub/b;->d:Lcom/moat/analytics/mobile/mpub/TrackerListener;

    invoke-interface {p2, p1}, Lcom/moat/analytics/mobile/mpub/TrackerListener;->onTrackingFailedToStart(Ljava/lang/String;)V

    :cond_10
    const/4 p2, 0x3

    const-string v0, "BaseTracker"

    invoke-static {p2, v0, p0, p1}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "[ERROR] "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->f()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/b;->f:Z

    if-nez v0, :cond_f

    const-string v0, "Tracker\'s target view is null"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    :cond_16
    const-string v0, " and "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/moat/analytics/mobile/mpub/n;

    invoke-direct {v0, p1}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b()V
    .registers 4

    const/4 v0, 0x3

    const-string v1, "BaseTracker"

    const-string v2, "Attempting to start impression."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->c()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->d()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v2}, Lcom/moat/analytics/mobile/mpub/b;->a(Ljava/util/List;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/b;->c:Lcom/moat/analytics/mobile/mpub/j;

    if-eqz v2, :cond_26

    invoke-virtual {v2, p0}, Lcom/moat/analytics/mobile/mpub/j;->b(Lcom/moat/analytics/mobile/mpub/b;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/mpub/b;->j:Z

    const-string v2, "Impression started."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_26
    const-string v2, "Bridge is null, won\'t start tracking"

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/mpub/n;

    const-string v1, "Bridge is null"

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c()V
    .registers 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/n;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/moat/analytics/mobile/mpub/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracker initialization failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/b;->a:Lcom/moat/analytics/mobile/mpub/n;

    invoke-virtual {v2}, Lcom/moat/analytics/mobile/mpub/n;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/mpub/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public changeTargetView(Landroid/view/View;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changing view to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/p;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "BaseTracker"

    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method d()V
    .registers 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->j()V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/b;->k()V

    return-void
.end method

.method e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/b;->j:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/b;->k:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method f()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->f()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/p;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->h:Lcom/moat/analytics/mobile/mpub/z;

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/b;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->f()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/moat/analytics/mobile/mpub/z;->a(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->h:Lcom/moat/analytics/mobile/mpub/z;

    iget-object v0, v0, Lcom/moat/analytics/mobile/mpub/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method public removeListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->d:Lcom/moat/analytics/mobile/mpub/TrackerListener;

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setListener(Lcom/moat/analytics/mobile/mpub/TrackerListener;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/b;->d:Lcom/moat/analytics/mobile/mpub/TrackerListener;

    return-void
.end method

.method public startTracking()V
    .registers 6

    const-string v0, "BaseTracker"

    :try_start_2
    const-string v1, "In startTracking method."

    const/4 v2, 0x3

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->b()V

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/b;->d:Lcom/moat/analytics/mobile/mpub/TrackerListener;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/b;->d:Lcom/moat/analytics/mobile/mpub/TrackerListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tracking started on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/moat/analytics/mobile/mpub/TrackerListener;->onTrackingStarted(Ljava/lang/String;)V

    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTracking succeeded for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[SUCCESS] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_5f

    goto :goto_65

    :catch_5f
    move-exception v0

    const-string v1, "startTracking"

    invoke-virtual {p0, v1, v0}, Lcom/moat/analytics/mobile/mpub/b;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_65
    return-void
.end method

.method public stopTracking()V
    .registers 7

    const-string v0, "BaseTracker"

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_4
    const-string v3, "In stopTracking method."

    invoke-static {v1, v0, p0, v3}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/moat/analytics/mobile/mpub/b;->k:Z

    iget-object v4, p0, Lcom/moat/analytics/mobile/mpub/b;->c:Lcom/moat/analytics/mobile/mpub/j;

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/moat/analytics/mobile/mpub/b;->c:Lcom/moat/analytics/mobile/mpub/j;

    invoke-virtual {v4, p0}, Lcom/moat/analytics/mobile/mpub/j;->c(Lcom/moat/analytics/mobile/mpub/b;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_17

    const/4 v2, 0x1

    goto :goto_1b

    :catch_17
    move-exception v3

    invoke-static {v3}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/Exception;)V

    :cond_1b
    :goto_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to stop tracking ad impression was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    if-eqz v2, :cond_2b

    move-object v5, v4

    goto :goto_2d

    :cond_2b
    const-string v5, "un"

    :goto_2d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "successful."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, p0, v3}, Lcom/moat/analytics/mobile/mpub/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_41

    const-string v0, "[SUCCESS] "

    goto :goto_43

    :cond_41
    const-string v0, "[ERROR] "

    :goto_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stopTracking "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_59

    const-string v2, "succeeded"

    goto :goto_5b

    :cond_59
    const-string v2, "failed"

    :goto_5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/mpub/b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/mpub/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->d:Lcom/moat/analytics/mobile/mpub/TrackerListener;

    if-eqz v0, :cond_7b

    invoke-interface {v0, v4}, Lcom/moat/analytics/mobile/mpub/TrackerListener;->onTrackingStopped(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/b;->d:Lcom/moat/analytics/mobile/mpub/TrackerListener;

    :cond_7b
    return-void
.end method
