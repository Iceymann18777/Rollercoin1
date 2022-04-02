.class public Lcom/startapp/android/publish/adsCommon/b/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/b/a;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/b/b;->c:Ljava/util/List;

    .line 23
    iput-object p2, p0, Lcom/startapp/android/publish/adsCommon/b/b;->a:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/b/b;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "tracking/adImpression[?]d="

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/b/a;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    const-string v1, "in getAppPresenceDParameter()"

    .line 63
    invoke-static {v0, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapp/android/publish/adsCommon/b/a;

    .line 68
    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/b/a;->c()Z

    move-result v4

    if-nez v4, :cond_14

    .line 69
    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/b/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/startapp/android/publish/adsCommon/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-virtual {v3}, Lcom/startapp/android/publish/adsCommon/b/a;->d()Z

    move-result v3

    const-string v5, "d="

    if-eqz v3, :cond_49

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 73
    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 78
    :cond_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appPresence tracking size = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " normal size = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 81
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const-string v0, "false"

    if-nez p1, :cond_91

    const-string p1, "true"

    .line 82
    invoke-static {v1, v0, p1}, Lcom/startapp/android/publish/adsCommon/c;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    :cond_91
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9e

    .line 85
    invoke-static {v2, v0, v0}, Lcom/startapp/android/publish/adsCommon/c;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9e
    return-void
.end method

.method private c()V
    .registers 6

    .line 51
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/b/b;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/b/b;->c:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/startapp/android/publish/adsCommon/b/b;->a(Ljava/util/List;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 53
    :goto_8
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/b/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 54
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/b/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2e

    .line 56
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/b/b;->b:Landroid/content/Context;

    new-instance v3, Lcom/startapp/android/publish/adsCommon/d/b;

    invoke-direct {v3}, Lcom/startapp/android/publish/adsCommon/d/b;-><init>()V

    const-string v4, "APP_PRESENCE"

    invoke-virtual {v3, v4}, Lcom/startapp/android/publish/adsCommon/d/b;->setNonImpressionReason(Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/d/b;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/startapp/android/publish/adsCommon/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;)V

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_31
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 28
    sget-object v0, Lcom/startapp/common/g$a;->a:Lcom/startapp/common/g$a;

    new-instance v1, Lcom/startapp/android/publish/adsCommon/b/b$1;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/adsCommon/b/b$1;-><init>(Lcom/startapp/android/publish/adsCommon/b/b;)V

    invoke-static {v0, v1}, Lcom/startapp/common/g;->a(Lcom/startapp/common/g$a;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected b()Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x3

    const-string v1, "in doInBackground handler"

    .line 37
    invoke-static {v0, v1}, Lcom/startapp/common/a/g;->a(ILjava/lang/String;)V

    .line 41
    :try_start_6
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/b/b;->c()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_b

    const/4 v0, 0x1

    goto :goto_1c

    :catch_b
    move-exception v0

    .line 43
    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/b/b;->b:Landroid/content/Context;

    sget-object v2, Lcom/startapp/android/publish/adsCommon/f/d;->b:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppPresenceHandler.doInBackground - sendAdImpressions failed"

    const-string v4, ""

    invoke-static {v1, v2, v3, v0, v4}, Lcom/startapp/android/publish/adsCommon/f/f;->a(Landroid/content/Context;Lcom/startapp/android/publish/adsCommon/f/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    :goto_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
