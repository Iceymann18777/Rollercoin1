.class public Lcom/startapp/android/publish/ads/list3d/a;
.super Ljava/lang/Object;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/ads/list3d/a$b;,
        Lcom/startapp/android/publish/ads/list3d/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/adsCommon/i;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/startapp/android/publish/ads/list3d/g;

.field e:I

.field f:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/startapp/android/publish/ads/list3d/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->e:I

    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->b:Ljava/util/Hashtable;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->c:Ljava/util/Set;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    return-object v0

    .line 116
    :cond_b
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 117
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    iget v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->e:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_29

    .line 119
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/startapp/android/publish/ads/list3d/a$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/list3d/a$b;-><init>(Lcom/startapp/android/publish/ads/list3d/a;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_29
    add-int/lit8 v0, v0, 0x1

    .line 121
    iput v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->e:I

    .line 122
    new-instance v0, Lcom/startapp/android/publish/ads/list3d/a$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/startapp/android/publish/ads/list3d/a$a;-><init>(Lcom/startapp/android/publish/ads/list3d/a;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/ads/list3d/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_38
    :goto_38
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->e:I

    .line 52
    iget-object v1, p0, Lcom/startapp/android/publish/ads/list3d/a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 54
    iget-object v1, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_36

    .line 55
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    iget-object v3, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/android/publish/adsCommon/i;

    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/adsCommon/i;->a(Z)V

    goto :goto_19

    .line 59
    :cond_31
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_36
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;J)V
    .registers 13

    .line 64
    iget-object p2, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    return-void

    .line 67
    :cond_9
    new-instance p2, Lcom/startapp/android/publish/adsCommon/i;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    move-object v0, p2

    move-object v1, p1

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/startapp/android/publish/adsCommon/i;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;J)V

    .line 68
    iget-object p1, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p2}, Lcom/startapp/android/publish/adsCommon/i;->a()V

    return-void
.end method

.method public a(Lcom/startapp/android/publish/ads/list3d/g;Z)V
    .registers 3

    .line 42
    iput-object p1, p0, Lcom/startapp/android/publish/ads/list3d/a;->d:Lcom/startapp/android/publish/ads/list3d/g;

    if-eqz p2, :cond_7

    .line 45
    invoke-virtual {p0}, Lcom/startapp/android/publish/ads/list3d/a;->a()V

    :cond_7
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 76
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 77
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/android/publish/adsCommon/i;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/startapp/android/publish/adsCommon/i;->a(Z)V

    :cond_1e
    return-void
.end method

.method public b()V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 85
    iget-object v2, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/adsCommon/i;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/i;->b()V

    goto :goto_a

    :cond_2a
    return-void
.end method

.method public c()V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 93
    iget-object v2, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/adsCommon/i;

    invoke-virtual {v1}, Lcom/startapp/android/publish/adsCommon/i;->a()V

    goto :goto_a

    :cond_2a
    return-void
.end method

.method public d()V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 101
    iget-object v2, p0, Lcom/startapp/android/publish/ads/list3d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/android/publish/adsCommon/i;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/adsCommon/i;->a(Z)V

    goto :goto_a

    :cond_2b
    return-void
.end method

.method public e()V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 130
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/a;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/ads/list3d/a$b;

    .line 131
    new-instance v1, Lcom/startapp/android/publish/ads/list3d/a$a;

    iget v2, v0, Lcom/startapp/android/publish/ads/list3d/a$b;->a:I

    iget-object v3, v0, Lcom/startapp/android/publish/ads/list3d/a$b;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/startapp/android/publish/ads/list3d/a$b;->c:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/startapp/android/publish/ads/list3d/a$a;-><init>(Lcom/startapp/android/publish/ads/list3d/a;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/ads/list3d/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_21
    return-void
.end method
