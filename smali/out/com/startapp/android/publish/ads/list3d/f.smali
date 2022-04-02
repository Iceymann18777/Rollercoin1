.class public Lcom/startapp/android/publish/ads/list3d/f;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field private static a:Lcom/startapp/android/publish/ads/list3d/f;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/startapp/android/publish/ads/list3d/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/startapp/android/publish/ads/list3d/f;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/list3d/f;-><init>()V

    sput-object v0, Lcom/startapp/android/publish/ads/list3d/f;->a:Lcom/startapp/android/publish/ads/list3d/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/ads/list3d/f;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/startapp/android/publish/ads/list3d/f;
    .registers 1

    .line 21
    sget-object v0, Lcom/startapp/android/publish/ads/list3d/f;->a:Lcom/startapp/android/publish/ads/list3d/f;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/startapp/android/publish/ads/list3d/e;
    .registers 6

    .line 25
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/f;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 26
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/f;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/android/publish/ads/list3d/e;

    return-object p1

    .line 28
    :cond_11
    new-instance v0, Lcom/startapp/android/publish/ads/list3d/e;

    invoke-direct {v0}, Lcom/startapp/android/publish/ads/list3d/e;-><init>()V

    .line 29
    iget-object v1, p0, Lcom/startapp/android/publish/ads/list3d/f;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created new model for uuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Size = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/startapp/android/publish/ads/list3d/f;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ListModelManager"

    invoke-static {v2, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/startapp/android/publish/ads/list3d/f;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was removed, Size = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/startapp/android/publish/ads/list3d/f;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ListModelManager"

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/startapp/common/a/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
