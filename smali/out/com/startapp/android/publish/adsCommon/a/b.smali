.class public Lcom/startapp/android/publish/adsCommon/a/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Lcom/startapp/android/publish/adsCommon/a/b;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/startapp/android/publish/common/model/AdPreferences$Placement;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/a/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/a/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/startapp/android/publish/adsCommon/a/b;

    invoke-direct {v0}, Lcom/startapp/android/publish/adsCommon/a/b;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/a/b;->a:Lcom/startapp/android/publish/adsCommon/a/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/b;->b:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/b;->c:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/b;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/startapp/android/publish/adsCommon/a/b;
    .registers 1

    .line 23
    sget-object v0, Lcom/startapp/android/publish/adsCommon/a/b;->a:Lcom/startapp/android/publish/adsCommon/a/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/android/publish/common/model/AdPreferences$Placement;",
            ")",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/a/a;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/a/a;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public declared-synchronized a(Lcom/startapp/android/publish/adsCommon/a/a;)V
    .registers 6

    monitor-enter p0

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/b;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/b;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/a/a;->a()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_23

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/a/b;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/a/a;->a()Lcom/startapp/android/publish/common/model/AdPreferences$Placement;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_23
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/b;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_42

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/a/b;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/startapp/android/publish/adsCommon/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_42
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 60
    monitor-exit p0

    return-void

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 29
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/a/a;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
