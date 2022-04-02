.class public Lcom/startapp/android/publish/adsCommon/f/c;
.super Ljava/lang/Object;
.source "StartAppSDK"


# static fields
.field static f:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/startapp/common/d;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapp/android/publish/adsCommon/h/a;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Lcom/startapp/android/publish/adsCommon/f/b;

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/f/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/android/publish/adsCommon/f/c;-><init>(Landroid/content/Context;ZLcom/startapp/common/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/startapp/common/d;)V
    .registers 6

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/startapp/android/publish/adsCommon/f/c$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/adsCommon/f/c$1;-><init>(Lcom/startapp/android/publish/adsCommon/f/c;)V

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/c;->g:Ljava/lang/Runnable;

    .line 34
    iput-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/c;->a:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcom/startapp/android/publish/adsCommon/f/c;->b:Lcom/startapp/common/d;

    .line 37
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/startapp/android/publish/adsCommon/f/c;->c:Ljava/util/ArrayList;

    .line 38
    new-instance p3, Lcom/startapp/android/publish/adsCommon/f/b;

    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/d;->c:Lcom/startapp/android/publish/adsCommon/f/d;

    invoke-direct {p3, v0}, Lcom/startapp/android/publish/adsCommon/f/b;-><init>(Lcom/startapp/android/publish/adsCommon/f/d;)V

    iput-object p3, p0, Lcom/startapp/android/publish/adsCommon/f/c;->e:Lcom/startapp/android/publish/adsCommon/f/b;

    .line 39
    invoke-virtual {p3, p2}, Lcom/startapp/android/publish/adsCommon/f/b;->a(Z)V

    .line 41
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/common/metaData/MetaData;->getSensorsConfig()Lcom/startapp/android/publish/common/metaData/g;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/common/metaData/g;->b()Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 42
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/f/c;->c:Ljava/util/ArrayList;

    new-instance p3, Lcom/startapp/android/publish/adsCommon/h/c;

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/c;->g:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/c;->e:Lcom/startapp/android/publish/adsCommon/f/b;

    invoke-direct {p3, p1, v0, v1}, Lcom/startapp/android/publish/adsCommon/h/c;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/startapp/android/publish/adsCommon/f/b;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_3d
    invoke-static {}, Lcom/startapp/android/publish/common/metaData/MetaData;->getInstance()Lcom/startapp/android/publish/common/metaData/MetaData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/common/metaData/MetaData;->getBluetoothConfig()Lcom/startapp/android/publish/common/metaData/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/android/publish/common/metaData/b;->b()Z

    move-result p2

    if-eqz p2, :cond_59

    .line 46
    iget-object p2, p0, Lcom/startapp/android/publish/adsCommon/f/c;->c:Ljava/util/ArrayList;

    new-instance p3, Lcom/startapp/android/publish/adsCommon/h/b;

    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/c;->g:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/startapp/android/publish/adsCommon/f/c;->e:Lcom/startapp/android/publish/adsCommon/f/b;

    invoke-direct {p3, p1, v0, v1}, Lcom/startapp/android/publish/adsCommon/h/b;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Lcom/startapp/android/publish/adsCommon/f/b;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_59
    iget-object p1, p0, Lcom/startapp/android/publish/adsCommon/f/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/startapp/android/publish/adsCommon/f/c;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 53
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/f/c;->d:I

    if-lez v0, :cond_20

    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/c;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 54
    :goto_e
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/f/c;->d:I

    if-ge v1, v0, :cond_23

    .line 55
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/adsCommon/h/a;

    invoke-virtual {v0}, Lcom/startapp/android/publish/adsCommon/h/a;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 58
    :cond_20
    invoke-virtual {p0}, Lcom/startapp/android/publish/adsCommon/f/c;->b()V

    :cond_23
    return-void
.end method

.method b()V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/c;->b:Lcom/startapp/common/d;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 81
    invoke-interface {v0, v1}, Lcom/startapp/common/d;->a(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public c()Lcom/startapp/android/publish/adsCommon/f/b;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/c;->e:Lcom/startapp/android/publish/adsCommon/f/b;

    return-object v0
.end method
