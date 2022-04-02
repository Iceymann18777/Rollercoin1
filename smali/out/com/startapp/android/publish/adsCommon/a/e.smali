.class public Lcom/startapp/android/publish/adsCommon/a/e;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/startapp/android/publish/adsCommon/a/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private applyOnBannerRefresh:Z

.field private placements:Ljava/util/Map;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Ljava/util/HashMap;
        c = Ljava/util/ArrayList;
        d = Lcom/startapp/android/publish/common/model/AdPreferences$Placement;
        e = Lcom/startapp/android/publish/adsCommon/a/c;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/startapp/android/publish/common/model/AdPreferences$Placement;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/a/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private session:Ljava/util/List;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Ljava/util/ArrayList;
        c = Lcom/startapp/android/publish/adsCommon/a/c;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/Map;
    .annotation runtime Lcom/startapp/common/c/f;
        b = Ljava/util/HashMap;
        c = Ljava/util/ArrayList;
        e = Lcom/startapp/android/publish/adsCommon/a/c;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/a/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/e;->session:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/e;->placements:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/e;->tags:Ljava/util/Map;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/a/e;->applyOnBannerRefresh:Z

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/e;->a:Ljava/util/Set;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Lcom/startapp/android/publish/adsCommon/a/d;Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/a/f;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/a/c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/adsCommon/a/a;",
            ">;",
            "Lcom/startapp/android/publish/adsCommon/a/d;",
            "Ljava/lang/String;",
            ")",
            "Lcom/startapp/android/publish/adsCommon/a/f;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_9

    .line 69
    new-instance p1, Lcom/startapp/android/publish/adsCommon/a/f;

    invoke-direct {p1, v0}, Lcom/startapp/android/publish/adsCommon/a/f;-><init>(Z)V

    return-object p1

    .line 72
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/adsCommon/a/c;

    .line 76
    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/a/c;->a()Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/a/e;->a:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_d

    .line 79
    :cond_2c
    invoke-virtual {v1, p2}, Lcom/startapp/android/publish/adsCommon/a/c;->a(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_7e

    .line 81
    new-instance p1, Lcom/startapp/android/publish/adsCommon/a/f;

    const/4 p2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/startapp/common/Constants;->a()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_71

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_73

    :cond_71
    const-string p3, ""

    :goto_73
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/startapp/android/publish/adsCommon/a/f;-><init>(ZLjava/lang/String;)V

    return-object p1

    .line 83
    :cond_7e
    iget-object v2, p0, Lcom/startapp/android/publish/adsCommon/a/e;->a:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 86
    :cond_88
    new-instance p1, Lcom/startapp/android/publish/adsCommon/a/f;

    invoke-direct {p1, v0}, Lcom/startapp/android/publish/adsCommon/a/f;-><init>(Z)V

    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/a/f;
    .registers 7

    monitor-enter p0

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/e;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 56
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/e;->tags:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/a/b;->a()Lcom/startapp/android/publish/adsCommon/a/b;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/startapp/android/publish/adsCommon/a/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/adsCommon/a/d;->a:Lcom/startapp/android/publish/adsCommon/a/d;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/startapp/android/publish/adsCommon/a/e;->a(Ljava/util/List;Ljava/util/List;Lcom/startapp/android/publish/adsCommon/a/d;Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/a/f;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 58
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/a/e;->placements:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/a/b;->a()Lcom/startapp/android/publish/adsCommon/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/adsCommon/a/b;->a(Lcom/startapp/android/publish/common/model/AdPreferences$Placement;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/startapp/android/publish/adsCommon/a/d;->b:Lcom/startapp/android/publish/adsCommon/a/d;

    invoke-virtual {p1}, Lcom/startapp/android/publish/common/model/AdPreferences$Placement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/startapp/android/publish/adsCommon/a/e;->a(Ljava/util/List;Ljava/util/List;Lcom/startapp/android/publish/adsCommon/a/d;Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/a/f;

    move-result-object p2

    .line 59
    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/a/f;->a()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 60
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/a/e;->session:Ljava/util/List;

    invoke-static {}, Lcom/startapp/android/publish/adsCommon/a/b;->a()Lcom/startapp/android/publish/adsCommon/a/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/a/b;->c()Ljava/util/List;

    move-result-object p2

    sget-object v0, Lcom/startapp/android/publish/adsCommon/a/d;->c:Lcom/startapp/android/publish/adsCommon/a/d;

    const-string v1, "session"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/startapp/android/publish/adsCommon/a/e;->a(Ljava/util/List;Ljava/util/List;Lcom/startapp/android/publish/adsCommon/a/d;Ljava/lang/String;)Lcom/startapp/android/publish/adsCommon/a/f;

    move-result-object p2

    :cond_54
    const-string p1, "AdRules"

    const/4 v0, 0x3

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldDisplayAd result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/a/f;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/a/f;->a()Z

    move-result v2

    if-eqz v2, :cond_71

    const-string v2, ""

    goto :goto_86

    :cond_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " because of rule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/a/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_90
    .catchall {:try_start_1 .. :try_end_90} :catchall_92

    .line 64
    monitor-exit p0

    return-object p2

    :catchall_92
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/a/e;->applyOnBannerRefresh:Z

    return v0
.end method

.method public b()V
    .registers 2

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/a/e;->a:Ljava/util/Set;

    return-void
.end method
