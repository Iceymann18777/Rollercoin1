.class public Lcom/startapp/android/publish/ads/video/c/a/d;
.super Lcom/startapp/android/publish/ads/video/c/a/c;
.source "StartAppSDK"


# instance fields
.field private final c:D

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 19
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/c;-><init>(Landroid/content/Context;)V

    .line 21
    iput p2, p0, Lcom/startapp/android/publish/ads/video/c/a/d;->e:I

    .line 22
    iget p1, p0, Lcom/startapp/android/publish/ads/video/c/a/d;->a:I

    int-to-double p1, p1

    iget v0, p0, Lcom/startapp/android/publish/ads/video/c/a/d;->b:I

    int-to-double v0, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    iput-wide p1, p0, Lcom/startapp/android/publish/ads/video/c/a/d;->c:D

    .line 23
    iget p1, p0, Lcom/startapp/android/publish/ads/video/c/a/d;->a:I

    iget p2, p0, Lcom/startapp/android/publish/ads/video/c/a/d;->b:I

    mul-int p1, p1, p2

    iput p1, p0, Lcom/startapp/android/publish/ads/video/c/a/d;->d:I

    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/video/c/a/d;)D
    .registers 3

    .line 10
    iget-wide v0, p0, Lcom/startapp/android/publish/ads/video/c/a/d;->c:D

    return-wide v0
.end method

.method static synthetic a(II)I
    .registers 2

    .line 10
    invoke-static {p0, p1}, Lcom/startapp/android/publish/ads/video/c/a/d;->b(II)I

    move-result p0

    return p0
.end method

.method private a(IIDI)Ljava/lang/Double;
    .registers 10

    int-to-double v0, p1

    int-to-double v2, p2

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    mul-int p1, p1, p2

    div-double/2addr v0, p3

    int-to-double p1, p1

    int-to-double p3, p5

    .line 67
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, p3

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    mul-double p3, p3, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double p1, p1, v0

    add-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/startapp/android/publish/ads/video/c/a/d;IIDI)Ljava/lang/Double;
    .registers 6

    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/startapp/android/publish/ads/video/c/a/d;->a(IIDI)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private static b(II)I
    .registers 2

    if-ge p0, p1, :cond_4

    const/4 p0, -0x1

    goto :goto_9

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method static synthetic b(Lcom/startapp/android/publish/ads/video/c/a/d;)I
    .registers 1

    .line 10
    iget p0, p0, Lcom/startapp/android/publish/ads/video/c/a/d;->d:I

    return p0
.end method

.method static synthetic c(Lcom/startapp/android/publish/ads/video/c/a/d;)I
    .registers 1

    .line 10
    iget p0, p0, Lcom/startapp/android/publish/ads/video/c/a/d;->e:I

    return p0
.end method


# virtual methods
.method protected a()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/startapp/android/publish/ads/video/c/a/a/b;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/startapp/android/publish/ads/video/c/a/d$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/ads/video/c/a/d$1;-><init>(Lcom/startapp/android/publish/ads/video/c/a/d;)V

    return-object v0
.end method
