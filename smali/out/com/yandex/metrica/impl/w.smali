.class Lcom/yandex/metrica/impl/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/yandex/metrica/impl/b;

.field private final c:Lcom/yandex/metrica/impl/x;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;)V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yandex/metrica/impl/w;->a:Landroid/os/Handler;

    .line 27
    iput-object p2, p0, Lcom/yandex/metrica/impl/w;->b:Lcom/yandex/metrica/impl/b;

    .line 28
    new-instance v0, Lcom/yandex/metrica/impl/x;

    invoke-direct {v0, p1, p2}, Lcom/yandex/metrica/impl/x;-><init>(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/w;->c:Lcom/yandex/metrica/impl/x;

    return-void
.end method

.method private static a(Lcom/yandex/metrica/impl/b;)Ljava/lang/String;
    .registers 1

    .line 56
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/b;->d()Lcom/yandex/metrica/impl/aw;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/metrica/CounterConfiguration;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;Ljava/lang/Runnable;)V
    .registers 8

    .line 43
    invoke-static {p0, p1, p2}, Lcom/yandex/metrica/impl/w;->b(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;Ljava/lang/Runnable;)V

    .line 44
    invoke-static {p1}, Lcom/yandex/metrica/impl/w;->a(Lcom/yandex/metrica/impl/b;)Ljava/lang/String;

    move-result-object v0

    .line 1048
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1060
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/b;->d()Lcom/yandex/metrica/impl/aw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/aw;->b()Lcom/yandex/metrica/CounterConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/metrica/CounterConfiguration;->d()I

    move-result p1

    mul-int/lit16 p1, p1, 0x1f4

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 44
    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method private static b(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;Ljava/lang/Runnable;)V
    .registers 3

    .line 52
    invoke-static {p1}, Lcom/yandex/metrica/impl/w;->a(Lcom/yandex/metrica/impl/b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/yandex/metrica/impl/w;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/w;->b:Lcom/yandex/metrica/impl/b;

    iget-object v2, p0, Lcom/yandex/metrica/impl/w;->c:Lcom/yandex/metrica/impl/x;

    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/w;->b(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;Ljava/lang/Runnable;)V

    return-void
.end method

.method b()V
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/w;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/metrica/impl/w;->b:Lcom/yandex/metrica/impl/b;

    iget-object v2, p0, Lcom/yandex/metrica/impl/w;->c:Lcom/yandex/metrica/impl/x;

    invoke-static {v0, v1, v2}, Lcom/yandex/metrica/impl/w;->a(Landroid/os/Handler;Lcom/yandex/metrica/impl/b;Ljava/lang/Runnable;)V

    return-void
.end method
