.class public Lcom/startapp/android/publish/adsCommon/f/a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private dns:Z

.field public hostPeriodic:Ljava/lang/String;

.field public hostSecured:Ljava/lang/String;

.field private retryNum:I

.field private retryTime:I

.field private sendHopsOnFirstSucceededSmartRedirect:Z

.field private succeededSmartRedirectInfoProbability:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0x32

    new-array v1, v1, [B

    fill-array-data v1, :array_10

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/startapp/android/publish/adsCommon/f/a;->a:Ljava/lang/String;

    return-void

    nop

    :array_10
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x73t
        0x3at
        0x2ft
        0x2ft
        0x69t
        0x6dt
        0x70t
        0x2et
        0x73t
        0x74t
        0x61t
        0x72t
        0x74t
        0x61t
        0x70t
        0x70t
        0x73t
        0x65t
        0x72t
        0x76t
        0x69t
        0x63t
        0x65t
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x2ft
        0x74t
        0x72t
        0x61t
        0x63t
        0x6bt
        0x69t
        0x6et
        0x67t
        0x2ft
        0x69t
        0x6et
        0x66t
        0x6ft
        0x45t
        0x76t
        0x65t
        0x6et
        0x74t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/a;->hostSecured:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/a;->hostPeriodic:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/f/a;->dns:Z

    const/4 v1, 0x3

    .line 28
    iput v1, p0, Lcom/startapp/android/publish/adsCommon/f/a;->retryNum:I

    const/16 v1, 0xa

    .line 29
    iput v1, p0, Lcom/startapp/android/publish/adsCommon/f/a;->retryTime:I

    const v1, 0x3c23d70a    # 0.01f

    .line 30
    iput v1, p0, Lcom/startapp/android/publish/adsCommon/f/a;->succeededSmartRedirectInfoProbability:F

    .line 31
    iput-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/f/a;->sendHopsOnFirstSucceededSmartRedirect:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/a;->hostSecured:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/startapp/android/publish/adsCommon/f/a;->hostPeriodic:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Lcom/startapp/android/publish/adsCommon/f/a;->a:Ljava/lang/String;

    :goto_7
    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 42
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/f/a;->dns:Z

    return v0
.end method

.method public d()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/f/a;->retryNum:I

    return v0
.end method

.method public e()J
    .registers 4

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/startapp/android/publish/adsCommon/f/a;->retryTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()F
    .registers 2

    .line 54
    iget v0, p0, Lcom/startapp/android/publish/adsCommon/f/a;->succeededSmartRedirectInfoProbability:F

    return v0
.end method

.method public g()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/startapp/android/publish/adsCommon/f/a;->sendHopsOnFirstSucceededSmartRedirect:Z

    return v0
.end method
