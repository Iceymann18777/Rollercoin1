.class Lcom/yandex/metrica/impl/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z


# direct methods
.method constructor <init>()V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x1e8480

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yandex/metrica/impl/q;->a:J

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/q;->b:Z

    return-void
.end method


# virtual methods
.method a()Z
    .registers 7

    .line 29
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/q;->b:Z

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/q;->b:Z

    .line 1041
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yandex/metrica/impl/q;->a:J

    sub-long/2addr v2, v4

    if-eqz v0, :cond_16

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-lez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    return v1
.end method

.method b()V
    .registers 3

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/q;->b:Z

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/metrica/impl/q;->a:J

    return-void
.end method

.method c()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/q;->b:Z

    return v0
.end method
