.class public abstract Lcom/startapp/android/publish/adsCommon/h;
.super Lcom/startapp/android/publish/adsCommon/Ad;
.source "StartAppSDK"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adsDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/adsCommon/Ad;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/h;->adsDetails:Ljava/util/List;

    return-void
.end method

.method private a()V
    .registers 4

    .line 29
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/h;->adsDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/common/model/AdDetails;

    .line 30
    invoke-virtual {v2}, Lcom/startapp/android/publish/common/model/AdDetails;->getIsBelowMinCPM()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v1, 0x0

    goto :goto_7

    .line 34
    :cond_1b
    iput-boolean v1, p0, Lcom/startapp/android/publish/adsCommon/h;->belowMinCPM:Z

    return-void
.end method

.method private b()V
    .registers 9

    .line 45
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/h;->adsDetails:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 47
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/common/model/AdDetails;

    if-eqz v2, :cond_9

    .line 49
    invoke-virtual {v2}, Lcom/startapp/android/publish/common/model/AdDetails;->getTtl()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_9

    if-eqz v1, :cond_2f

    .line 50
    invoke-virtual {v2}, Lcom/startapp/android/publish/common/model/AdDetails;->getTtl()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_9

    .line 51
    :cond_2f
    invoke-virtual {v2}, Lcom/startapp/android/publish/common/model/AdDetails;->getTtl()Ljava/lang/Long;

    move-result-object v1

    goto :goto_9

    :cond_34
    if-eqz v1, :cond_46

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/h;->adCacheTtl:Ljava/lang/Long;

    :cond_46
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/h;->adsDetails:Ljava/util/List;

    .line 23
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/h;->b()V

    .line 24
    invoke-direct {p0}, Lcom/startapp/android/publish/adsCommon/h;->a()V

    return-void
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/common/model/AdDetails;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/h;->adsDetails:Ljava/util/List;

    return-object v0
.end method
