.class public Lcom/yandex/metrica/impl/z;
.super Lcom/yandex/metrica/impl/b;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/e;Lcom/yandex/metrica/impl/ay;)V
    .registers 6

    .line 35
    invoke-virtual {p2}, Lcom/yandex/metrica/e;->getApiKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/aw;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/aw;-><init>()V

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/yandex/metrica/impl/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ay;Lcom/yandex/metrica/impl/aw;)V

    .line 38
    iget-object p1, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/aw;

    new-instance p3, Lcom/yandex/metrica/impl/an;

    invoke-virtual {p2}, Lcom/yandex/metrica/e;->getPreloadInfo()Lcom/yandex/metrica/PreloadInfo;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/yandex/metrica/impl/an;-><init>(Lcom/yandex/metrica/PreloadInfo;)V

    invoke-virtual {p1, p3}, Lcom/yandex/metrica/impl/aw;->a(Lcom/yandex/metrica/impl/an;)V

    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event received: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_18

    const-string p0, ". With value: "

    .line 72
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_18
    invoke-static {}, Lcom/yandex/metrica/impl/utils/j;->f()Lcom/yandex/metrica/impl/utils/j;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/utils/j;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;)V
    .registers 4

    const-string v0, "Application"

    .line 107
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1d

    .line 109
    invoke-static {}, Lcom/yandex/metrica/impl/utils/j;->f()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v0

    const-string v1, "Enable activity auto tracking"

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/utils/j;->a(Ljava/lang/String;)V

    .line 1118
    new-instance v0, Lcom/yandex/metrica/impl/m;

    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/m;-><init>(Lcom/yandex/metrica/impl/z;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void

    .line 112
    :cond_1d
    invoke-static {}, Lcom/yandex/metrica/impl/utils/j;->f()Lcom/yandex/metrica/impl/utils/j;

    move-result-object p1

    const-string v0, "Could not enable activity auto tracking. API level should be more than 14 (ICE_CREAM_SANDWICH)"

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/utils/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/e;Z)V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Lcom/yandex/metrica/e;)V

    .line 139
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->l()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/z;->d(Z)V

    if-eqz p2, :cond_1b

    .line 142
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/z;->b()V

    .line 144
    :cond_1b
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->j()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/yandex/metrica/impl/z;->b(Ljava/util/Map;)V

    .line 145
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getErrorEnvironment()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/z;->a(Ljava/util/Map;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/j;)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/j;)V

    return-void
.end method

.method a(Lcom/yandex/metrica/impl/ob/dw;)V
    .registers 2

    .line 43
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/b;->a(Lcom/yandex/metrica/impl/ob/dw;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 181
    invoke-static {}, Lcom/yandex/metrica/impl/utils/j;->f()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "Invalid Error Environment (key,value) pair: (%s,%s)."

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/utils/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 183
    :cond_19
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .registers 2

    .line 122
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/z;->d(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/z;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 171
    invoke-static {}, Lcom/yandex/metrica/impl/utils/j;->f()Lcom/yandex/metrica/impl/utils/j;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "Invalid App Environment (key,value) pair: (%s,%s)."

    .line 172
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/utils/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 174
    :cond_19
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .registers 2

    .line 126
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/z;->d(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/z;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Z)V

    return-void
.end method

.method d(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_b

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public d(Z)V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->c:Lcom/yandex/metrica/impl/ay;

    iget-object v1, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ay;->a(ZLcom/yandex/metrica/impl/aw;)V

    return-void
.end method

.method public f()Z
    .registers 2

    .line 199
    iget-object v0, p0, Lcom/yandex/metrica/impl/z;->b:Lcom/yandex/metrica/impl/aw;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/CounterConfiguration;->k()Z

    move-result v0

    return v0
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 80
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/b;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    invoke-static {}, Lcom/yandex/metrica/impl/utils/j;->f()Lcom/yandex/metrica/impl/utils/j;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Error received: %s"

    invoke-virtual {p2, p1, v0}, Lcom/yandex/metrica/impl/utils/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;)V
    .registers 2

    .line 53
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/b;->reportEvent(Ljava/lang/String;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 58
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/b;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-super {p0, p1, p2}, Lcom/yandex/metrica/impl/b;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    if-nez p2, :cond_7

    const/4 p2, 0x0

    goto :goto_b

    .line 65
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_b
    invoke-static {p1, p2}, Lcom/yandex/metrica/impl/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
