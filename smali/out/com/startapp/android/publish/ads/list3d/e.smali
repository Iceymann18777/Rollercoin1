.class public Lcom/startapp/android/publish/ads/list3d/e;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private a:Lcom/startapp/android/publish/ads/list3d/a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/list3d/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/e;->c:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/startapp/android/publish/ads/list3d/a;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/list3d/a;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/e;->a:Lcom/startapp/android/publish/ads/list3d/a;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/e;->a:Lcom/startapp/android/publish/ads/list3d/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/startapp/android/publish/ads/list3d/a;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .registers 2

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/e;->b:Ljava/util/List;

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/e;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;J)V
    .registers 14

    .line 54
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/e;->a:Lcom/startapp/android/publish/ads/list3d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/startapp/android/publish/ads/list3d/e;->c:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/startapp/android/publish/ads/list3d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/adsCommon/d/b;J)V

    return-void
.end method

.method public a(Lcom/startapp/android/publish/ads/list3d/g;Z)V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/e;->a:Lcom/startapp/android/publish/ads/list3d/a;

    invoke-virtual {v0, p1, p2}, Lcom/startapp/android/publish/ads/list3d/a;->a(Lcom/startapp/android/publish/ads/list3d/g;Z)V

    return-void
.end method

.method public a(Lcom/startapp/android/publish/common/model/AdDetails;)V
    .registers 5

    .line 28
    new-instance v0, Lcom/startapp/android/publish/ads/list3d/ListItem;

    invoke-direct {v0, p1}, Lcom/startapp/android/publish/ads/list3d/ListItem;-><init>(Lcom/startapp/android/publish/common/model/AdDetails;)V

    .line 29
    iget-object p1, p0, Lcom/startapp/android/publish/ads/list3d/e;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object p1, p0, Lcom/startapp/android/publish/ads/list3d/e;->a:Lcom/startapp/android/publish/ads/list3d/a;

    iget-object v1, p0, Lcom/startapp/android/publish/ads/list3d/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/ListItem;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/ListItem;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lcom/startapp/android/publish/ads/list3d/a;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/e;->a:Lcom/startapp/android/publish/ads/list3d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/startapp/android/publish/ads/list3d/e;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/ads/list3d/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/e;->a:Lcom/startapp/android/publish/ads/list3d/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/a;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/startapp/android/publish/ads/list3d/e;->c:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/e;->a:Lcom/startapp/android/publish/ads/list3d/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/a;->c()V

    return-void
.end method

.method public d()V
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/e;->a:Lcom/startapp/android/publish/ads/list3d/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/ads/list3d/a;->d()V

    return-void
.end method

.method public e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapp/android/publish/ads/list3d/ListItem;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/e;->b:Ljava/util/List;

    return-object v0
.end method
